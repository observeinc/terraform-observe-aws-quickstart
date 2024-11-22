locals {
  workspace             = var.workspace.oid
  datastream            = var.datastream.dataset
  home_dashboard_name   = format(var.name_format, "Home")
  ec2_dashboard_name    = format(var.name_format, "EC2 Instances")
  lambda_dashboard_name = format(var.name_format, "Lambda Instances")
  rds_dashboard_name    = format(var.name_format, "RDS Instances")
  sqs_dashboard_name    = format(var.name_format, "SQS Services")

  resources = observe_dataset.resources.id
  logs      = observe_dataset.logs.id
  metrics   = observe_dataset.metrics.id

  #Instance dashboard locals are referred by this name 
  aws_asset_inventory = observe_dataset.resources.id
}

