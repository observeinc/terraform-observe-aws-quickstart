resource "random_pet" "test" {}

data "observe_workspace" "default" {
  name = "Default"
}

module "default" {
  source      = "../.."
  workspace   = data.observe_workspace.default
  name_format = "test_${random_pet.test.id}/%s"
}
