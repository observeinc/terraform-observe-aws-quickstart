locals {
  workspace           = var.workspace.oid
  datastream          = var.datastream.dataset
  home_dashboard_name = format(var.name_format, "Home")
  resources           = observe_dataset.resources.id
  logs                = observe_dataset.logs.id
  metrics             = observe_dataset.metrics.id
}
