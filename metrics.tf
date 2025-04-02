resource "observe_dataset" "metrics" {
  workspace   = local.workspace
  name        = format(var.name_format, "Metrics")
  icon_url    = "data/charts/increase-profits"
  freshness   = var.freshness_default_duration
  description = "AWS Asset Inventory"

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    alias    = "from_metricspoller_lambda"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "http" and string(EXTRA.path) = "/aws/cloudwatch/metrics"
      make_col
        timestamp:parse_isotime(string(FIELDS.Time)),
        invokedFunctionArn:string(EXTRA.invokedFunctionArn)
      extract_regex invokedFunctionArn, /arn:aws:lambda:(?P<region>[^:]+):(?P<account_id>[^:]+)/
      set_valid_from options(max_time_diff:${var.max_time_diff_duration}), timestamp
      pick_col
        timestamp,
        account_id,
        region,
        namespace:string(FIELDS.Namespace),
        metric_name:string(FIELDS.MetricName),
        dimensions:pivot_array(array(FIELDS.Dimensions), "Name", "Value"),
        ob:make_object(
          count:float64(FIELDS.Value.Count),
          max:float64(FIELDS.Value.Max),
          min:float64(FIELDS.Value.Min),
          sum:float64(FIELDS.Value.Sum)
        )
    EOF
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
        filter in(OBSERVATION_KIND, "http", "filedrop", "cloudwatchmetrics") and string(EXTRA["content-type"]) = "application/x-aws-cloudwatchmetrics"
        make_col data:FIELDS

        make_col timestamp:timestamp_ms(int64(data.timestamp))
        set_valid_from options(max_time_diff:${var.max_time_diff_duration}), timestamp
        make_col
          account_id:string(data.account_id),
          metric_stream_name:string(data.metric_stream_name),
          region:string(data.region),
          namespace:string(data.namespace),
          metric_name:string(data.metric_name),
          dimensions:object(data.dimensions),
          unit:string(data.unit),
          ob:make_object(
            count:float64(data.value.count),
            max:float64(data.value.max),
            min:float64(data.value.min),
            sum:float64(data.value.sum)
          )
        
        union @from_metricspoller_lambda
        flatten_single ob

        make_col
          metric:concat_strings(namespace, "/", metric_name, ".", _c_ob_path),
          value:float64(_c_ob_value),
          unit:if(_c_ob_path="count", string_null(), unit),
          service:case(
            namespace="NetworkELB", "ElasticLoadBalancingV2",
            namespace="AWS/EBS", "EC2",
            namespace="AWS/Firehose", "KinesisFirehose",
            namespace="AWS/ApplicationELB", "ElasticLoadBalancingV2",
            namespace="AWS/EC2" and path_exists(dimensions, "AutoScalingGroupName"), "AutoScaling",
            namespace="AWS/NATGateway", "EC2",
            namespace="AWS/EC2CapacityReservations", "EC2",
            namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiId"), "ApiGatewayV2",
            namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiName"), "ApiGateway",
            namespace="AWS/PrivateLinkEndpoints" and (path_exists(dimensions, "VPC Id") or path_exists(dimensions, "Subnet Id")), "EC2",
            starts_with(namespace, "AWS/"), split_part(namespace, "/", 2),
            starts_with(namespace, "ECS/ContainerInsights"), "ECS",
            starts_with(namespace, "ContainerInsights/"), "EKS",
            starts_with(namespace, "/aws/sagemaker/"), "SageMaker"
          )

        // base
        make_col resourceId:get_regex(string(dimensions), /".*?(Id|Identifier)":"([^"]*)"/, 2)

        // fallbacks
        make_col resourceId:case(
          // ALB ID is an ARN, and we need to exclude TargetGroup links to match AWS Config
          namespace="AWS/ApplicationELB" and path_exists(dimensions, "LoadBalancer"), concat_strings("arn:aws:elasticloadbalancing:", region, ":", account_id, ":loadbalancer/", string(dimensions["LoadBalancer"])),
          namespace="AWS/Events" and path_exists(dimensions, "RuleName"), string(dimensions["RuleName"]),
          namespace="AWS/EC2" and path_exists(dimensions, "AutoScalingGroupName"), dimensions["AutoScalingGroupName"],
          namespace="AWS/EC2CapacityReservations", string(dimensions["CapacityReservationId"]),
          namespace="AWS/NatGateway", dimensions["NatGatewayId"],
          namespace="AWS/Cloudwatch" and path_exists(dimensions, "MetricStreamName"), string(dimensions["MetricStreamName"]),
          namespace="AWS/ECS", coalesce(dimensions["ServiceName"], dimensions["DiscoveryName"], dimensions["ClusterName"]),
          namespace="AWS/Kinesis", string(dimensions["StreamName"]),
          namespace="AWS/Firehose", string(dimensions["DeliveryStreamName"]),
          namespace="AWS/Lambda", string(dimensions["FunctionName"]),
          //ApiGateway V2
          namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiId") and path_exists(dimensions, "Stage"), concat_strings("arn:aws:apigateway:", region, "::/apis/", string(dimensions["ApiId"]), "/stages/", string(dimensions["Stage"])), 
          namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiId"), concat_strings("arn:aws:apigateway:", region, "::/apis/", string(dimensions["ApiId"])),
          //ApiGateway V1
          namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiName") and path_exists(dimensions, "Stage"), concat_strings("arn:aws:apigateway:", region, "::/restapis/", string(dimensions["ApiName"]), "/stages/", string(dimensions["Stage"])),
          namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiId"), concat_strings("arn:aws:apigateway:", region, "::/restapis/", string(dimensions["ApiName"])),
          //ECS ContainerInsights
          namespace="ECS/ContainerInsights", string(coalesce(dimensions["TaskDefinitionFamily"], dimensions["ServiceName"], dimensions["ClusterName"])),
          namespace="AWS/PrivateLinkEndpoints" and path_exists(dimensions, "VPC Id"), string(dimensions["VPC Id"]),
          namespace="AWS/PrivateLinkEndpoints" and path_exists(dimensions, "Subnet Id"), string(dimensions["Subnet Id"]),
          namespace="AWS/SQS" and path_exists(dimensions, "QueueName"), concat_strings("https://sqs.", region, ".amazonaws.com/", account_id, "/", string(dimensions["QueueName"])),
          namespace="AWS/SNS" and path_exists(dimensions, "TopicName"), string(dimensions["TopicName"]),
          namespace="AWS/S3" and path_exists(dimensions, "BucketName"), string(dimensions["BucketName"]),
          namespace="AWS/ECR" and path_exists(dimensions, "RepositoryName"), string(dimensions["RepositoryName"]),
          namespace="AWS/CloudWatch/MetricStreams" and path_exists(dimensions, "MetricStreamName"), string(dimensions["MetricStreamName"]),
          namespace="AWS/DynamoDB" and path_exists(dimensions, "TableName"), string(dimensions["TableName"]),
          service="SageMaker" and path_exists(dimensions, "EndpointName"), string(dimensions["EndpointName"]),
          namespace="NetworkELB" and path_exists(dimensions, "LoadBalancer"), concat_strings("arn:aws:elasticloadbalancing:", region, ":", account_id, ":loadbalancer/", string(dimensions["LoadBalancer"])),
          true, resourceId
        )

        make_col account_id:case(service="ApiGatewayV2", "", true, account_id)

        make_col
          // https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
          unit: case(
            unit = "Seconds", "s",
            unit = "Microseconds", "us",
            unit = "Milliseconds", "ms",
            unit = "Bytes", "By",
            unit = "Kilobytes", "kB",
            unit = "Megabytes", "MB",
            unit = "Gigabytes", "GB",
            unit = "Terabytes", "TB",
            unit = "Bits", "b",
            unit = "Kilobits", "kb",
            unit = "Megabits", "mb",
            unit = "Gigabits", "gb",
            unit = "Terabits", "tb",
            unit = "Percent", "percent (0-100)",
            unit = "Count", string_null(),
            unit = "Bytes/Second", "B/s",
            unit = "Kilobytes/Second", "kB",
            unit = "Megabytes/Second", "MB",
            unit = "Gigabytes/Second", "GB",
            unit = "Terabytes/Second", "TB/s",
            unit = "Bits/Second", "b/s",
            unit = "Kilobits/Second", "kb/s",
            unit = "Megabits/Second", "mb/s",
            unit = "Gigabits/Second", "gb/s",
            unit = "Terabits/Second", "tb/s",
            unit = "Count/Second", string_null(),
            unit = "None", string_null(),
            true, unit
          ),
          metricType:"gauge"

        pick_col
          timestamp,
          account_id,
          region,
          namespace,
          service,
          resourceId,
          metric,
          metricType,
          value,
          unit,
          dimensions

        interface "metric", metric:metric, value:value, metricType:metricType, metricUnit:unit

        set_col_visible namespace:false
    EOF
  }
}

resource "observe_link" "metrics" {
  workspace = var.workspace.oid
  source    = observe_dataset.metrics.oid
  target    = observe_dataset.resources.oid
  fields    = ["account_id:AccountID", "region:Region", "service:Service", "resourceId:ID"]
  label     = "Resource"
}
