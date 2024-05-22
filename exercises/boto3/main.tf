# Configure the AWS provider
provider "aws" {
  region = "us-east-2"
}

variable "environment" {
    type = string
    description = "Environment"
}

# Define the log group resource
resource "aws_cloudwatch_log_group" "my_log_group_1" {
  name = "${var.environment}-mylog-1"
  retention_in_days = 14
}

resource "aws_cloudwatch_log_group" "my_log_group_2" {
  name = "${var.environment}-mylog-2"
  retention_in_days = 5
}

resource "aws_cloudwatch_log_group" "my_log_group_3" {
  name = "${var.environment}-mylog-3"
  retention_in_days = 7
}
