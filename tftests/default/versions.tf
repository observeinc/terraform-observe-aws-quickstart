terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3"
    }
    observe = {
      source  = "observeinc/observe"
      version = ">= 0.14.73, < 1.0.0"
    }
  }
  required_version = ">= 1.1.0"
}
