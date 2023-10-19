provider "aws" {
  region     = "us-east-1"
    access_key ="AKIAVDU7NAKNX7UBE3MH"
      secret_key ="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"
      }
        resource "aws_instance" "app_server" {
          ami           = "${var.ami}"
            instance_type = "${var.instance_type}"
              security_groups= ["launch-wizard-5"]
                key_name      = "LINUX-PAIR-KEY"
                     tags = {
                         Name = "MyEC2-VM"
                           }
                           }

