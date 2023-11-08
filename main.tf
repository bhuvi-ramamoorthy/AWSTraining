
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.6.0"
        }
    }
    required_version = ">= 1.0.0"
}

provider "aws" {
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
    region= "us-west-1"
}

resource "aws_instance" "web_app" {
    instance_type ="t2.micro"
    ami = "ami-010f8b02680f80998"
    #name = "can i choose a name for ec2 instance"
    subnet_id = "subnet-0221e76c43c58744a"
}
#making changes to configure access token