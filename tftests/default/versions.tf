terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3"
    }
    observe = {
      source  = "observeinc/observe"
      version = "~> 0.13"
    }
  }
  required_version = ">= 1.0"
}
