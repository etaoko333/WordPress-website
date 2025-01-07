# Define the AWS provider
provider "aws" {
  region  = "us-east-1"  # Replace with your preferred region
  profile = "default"    # Optional: Specify a profile from your AWS CLI config
}

# Create IAM User
resource "aws_iam_user" "admin_user" {
  name = "admin_user"
  tags = {
    Environment = "Production"
    Team        = "DevOps"
  }
}

# Attach AdministratorAccess Policy to the User
resource "aws_iam_user_policy_attachment" "admin_user_policy" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Create Access Key for the IAM User
resource "aws_iam_access_key" "admin_user_key" {
  user    = aws_iam_user.admin_user.name
  pgp_key = null # Replace with a PGP public key if you want encrypted keys
}

# Output the Access Key and Secret Key
output "access_key_id" {
  value       = aws_iam_access_key.admin_user_key.id
  description = "The AWS Access Key ID for the admin user"
}

output "secret_access_key" {
  value       = aws_iam_access_key.admin_user_key.secret
  description = "The AWS Secret Access Key for the admin user"
  sensitive   = true  # Prevents showing the key in plain text
}
