# Get resources information

Deploy the terraform code in this folder, then build a python script to make the following actions:
- List existing cloudwatch log groups having a specific prefix
- Get relevant information about all of them, `name` and `retention_days` (use list or dictionaries to display the information).
- If the `retention_days` is lower than 14, modify them via the boto3.

Ideally, you'd want to perform the last bullet point via Terraform, but here we want to learn boto3 only. Terraform is a topic for another day.