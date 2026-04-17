resource "random_pet" "test" {}

data "observe_workspace" "default" {
  name = "Default"
}

# Avoid System datastream: filedrop/tokens are often not permitted there.
resource "observe_datastream" "test" {
  workspace = data.observe_workspace.default.oid
  name      = "test-${random_pet.test.id}"
}

module "default" {
  source      = "../.."
  workspace   = data.observe_workspace.default
  name_format = "test_${random_pet.test.id}/%s"
  datastream = {
    dataset = observe_datastream.test.dataset
  }
}

module "filedrop" {
  source = "../../sources/filedrop"

  workspace = { oid = data.observe_workspace.default.oid }
  datastream = {
    oid = observe_datastream.test.oid
  }

  aws_account_id = "123456789012"
  aws_region     = "us-west-2"
  name           = "test-${random_pet.test.id}-observe-collection-{region}"
}
