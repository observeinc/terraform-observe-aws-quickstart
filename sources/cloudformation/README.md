Observe provides a [CloudFormation stack](https://observeinc.s3-us-west-2.amazonaws.com/cloudformation/collection-latest.yaml) which collects resource data from a given AWS region.

To install via the UI:

- open this [quick-create link](https://console.aws.amazon.com/cloudformation/home#/stacks/quickcreate?templateURL=https://observeinc.s3-us-west-2.amazonaws.com/cloudformation/collection-latest.yaml&stackName=ObserveCollection&param_ObserveCustomer=${OBSERVE_CUSTOMER?}&ObserveToken=${OBSERVE_TOKEN?})
- make sure you are logged in to the intended AWS account and region
- set the `ObserveCustomer` parameter to `${OBSERVE_CUSTOMER?}`
- set the `ObserveToken` parameter to `${OBSERVE_TOKEN?}`
- under `Capabilities`, check the box to acknowledge that this stack may create IAM resources
- click `Create Stack`

Alternatively, you can download the template using `curl` and deploy it directly from the AWS CLI:

```
curl -Lo collection.yaml https://observeinc.s3-us-west-2.amazonaws.com/cloudformation/collection-latest.yaml && \
aws cloudformation deploy --template-file ./collection.yaml \
	  --stack-name ObserveCollection \
	  --capabilities CAPABILITY_NAMED_IAM \
	  --parameter-overrides ObserveCustomer="${OBSERVE_CUSTOMER?}" ObserveToken="${OBSERVE_TOKEN?}"
```

Observe recommends that you pin the module version to the [latest tagged version](https://github.com/observeinc/cloudformation-aws-collection/tags).
This means replacing https://observeinc.s3-us-west-2.amazonaws.com/cloudformation/collection-latest.yaml with https://observeinc.s3-us-west-2.amazonaws.com/cloudformation/collection-{VERSION}.yaml where VERSION is a tag.

Refer to our [documentation](https://docs.observeinc.com/en/latest/content/integrations/aws/aws.html) for more information on this integration.
