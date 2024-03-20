Observe provides a [terraform module](https://github.com/observeinc/terraform-aws-collection) which collects resource data from a given AWS region. The following terraform snippet installs the AWS collection stack for a single region:

```
module "observe" {
  source           = "observeinc/collection/aws"
  observe_customer = "${OBSERVE_CUSTOMER?}"
  observe_token    = "${OBSERVE_TOKEN?}"
}
```

This terraform module forwards data towards Observe through a Kinesis Firehose and a Lambda function. Data is collected from the following sources:

- CloudWatch Metrics
- EventBridge
- CloudTrail

The Observe AWS app uses this data to reconstruct the state of your AWS inventory over time.

