terraform {
    required_version = ">=1.0.0, <=3.0.0"

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }

    required_providers {
      
    }

    backend "s3" {
        bucket         = "terraform-curso-2024"
        key            = "terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-curso-lock"
        encrypt        = true
        }
}