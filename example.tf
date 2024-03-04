
# example of how to generate a dataset

data "observe_datastream" "default" {
  workspace = var.workspace.oid
  name      = "System"
}

resource "observe_dataset" "example" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Example Dataset")
  icon_url    = "data_"
  freshness   = lookup(var.freshness_overrides, "example", "2m")
  description = <<-EOF
    This is an example dataset. Add a nice description here!
  EOF

  inputs = {
    "datastream" = data.observe_datastream.default.dataset
  }
  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "hello"
    EOF
  }

}