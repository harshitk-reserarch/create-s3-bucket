This repository contains the following files to create an s3 bucket:

- `terraform.tf`: Configures Terraform and the AWS provider.
- `main.tf`: Defines one AWS EC2 instance.
- `variables.tf`: Defines two variables named `instance_name` and `instance_type`, both with default values.
- `outputs.tf`: Defines one output named `instance_hostname`.
