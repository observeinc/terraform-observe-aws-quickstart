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
    pipeline = <<-EOF
        make_col
          timestamp:timestamp_ms(int64(FIELDS.timestamp)),
          data:string(FIELDS.data),
          continue:bool(FIELDS.continue),
          requestId:string(FIELDS.requestId),
          protocolVersion:string(EXTRA['X-Amz-Firehose-Protocol-Version']),
          sourceArn:string(EXTRA['X-Amz-Firehose-Source-Arn'])

        make_col data:split(data, "\n")
        flatten_all data
        make_col data:parse_json(string(@."_c_data_value"))

        filter path_exists(data, "metric_stream_name")
        make_col timestamp:timestamp_ms(int64(data.timestamp))
        set_valid_from options(max_time_diff:4h), timestamp
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

        flatten_single ob

        make_col
          metric:concat_strings(namespace, "/", metric_name, ".", _c_ob_path),
          value:float64(_c_ob_value),
          unit:if(_c_ob_path="count", string_null(), unit),
          service:case(
            namespace="AWS/EBS", "EC2",
            namespace="AWS/Firehose", "KinesisFirehose",
            namespace="AWS/ApplicationELB", "ElasticLoadBalancingV2",
            namespace="AWS/EC2" and path_exists(dimensions, "AutoScalingGroupName"), "AutoScaling",
            namespace="AWS/NATGateway", "EC2",
            namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiId"), "ApiGatewayV2",
            namespace="AWS/ApiGateway" and path_exists(dimensions, "ApiName"), "ApiGateway",
            starts_with(namespace, "AWS/"), split_part(namespace, "/", 2),
            starts_with(namespace, "ECS/ContainerInsights"), "ECS",
            starts_with(namespace, "ContainerInsights/"), "EKS"
          )

        // base
        make_col resourceId:get_regex(string(dimensions), /".*?(Id|Identifier)":"([^"]*)"/, 2)

        // fallbacks
        make_col resourceId:case(
          // ALB ID is an ARN, and we need to exclude TargetGroup links to match AWS Config
          namespace="AWS/ApplicationELB" and path_exists(dimensions, "LoadBalancer"), concat_strings("arn:aws:elasticloadbalancing:", region, ":", account_id, ":loadbalancer/", string(dimensions["LoadBalancer"])),
          namespace="AWS/Events" and path_exists(dimensions, "RuleName"), string(dimensions["RuleName"]),
          namespace="AWS/EC2" and path_exists(dimensions, "AutoScalingGroupName"), dimensions["AutoScalingGroupName"],
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
          namespace="ECS/ContainerInsights", coalesce(dimensions["TaskDefinitionFamily"], dimensions["ServiceName"], dimensions["ClusterName"]),
          true, resourceId
        )

        make_col account_id:case(service="ApiGatewayV2", "", true, account_id)

        make_col 
          unit:case(
            unit = "s", "Seconds",
            unit = "ms", "Milliseconds",
            unit = "{Count}", "Count",
            unit = "{Count}/s", "Count/Second",
            unit = "1", "None",
            unit = "By", "Bytes",
            unit = "By/s", "Bytes/Second",
            unit = "%", "Percent",
            unit = "GBy", "Gigabytes",
            unit = "MBy", "Megabytes"),
          metricType:"gauge"

        pick_col
          timestamp,
          account_id,
          region,
          service,
          resourceId,
          metric,
          metricType,
          value,
          unit,
          dimensions

        interface "metric", metric:metric, value:value, metricType:metricType
    EOF
  }

  stage {
    pipeline = <<-EOF
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
