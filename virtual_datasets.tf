locals {

  datasets = var.virtual_datasets ? {
    ec2 = {
      name = "AWS EC2 Instances"
      opal = <<-EOF
        filter Service = "EC2"
        filter ServiceSubType = "Instance"
    EOF
    }

    s3 = {
      name = "AWS S3 Buckets"
      opal = <<-EOF
        filter Service = "S3"
        filter ServiceSubType = "Bucket"
    EOF
    }

    lambda = {
      name = "AWS Lambda Functions"
      opal = <<-EOF
        filter Service = "Lambda"
        filter ServiceSubType = "Function"
    EOF
    }

    eks = {
      name = "AWS EKS Clusters"
      opal = <<-EOF
        filter Service = "EKS"
        filter ServiceSubType = "Cluster"
    EOF
    }
  } : {}
}

resource "observe_dataset" "ec2" {
  for_each              = local.datasets
  workspace             = local.workspace
  name                  = format(var.name_format, each.value.name)
  icon_url              = "user-interface/toolbars/right-navigation-toolbar"
  acceleration_disabled = true
  description           = each.value.name

  inputs = {
    "resources" = observe_dataset.resources.oid
  }

  stage {
    pipeline = each.value.opal
  }

}
