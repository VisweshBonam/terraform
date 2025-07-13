terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.98.0"
    }

    
  }

  backend "s3" {
    bucket = "secure-state-file"
    key = "secure-state-v"
    encrypt = true
    region = "us-east-1"
    use_lockfile = true
  }
}