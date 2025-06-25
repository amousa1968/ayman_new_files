# Compliant role with no admin access
resource "aws_iam_role" "developer_role" {
  name = "developer-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = { Service = "ec2.amazonaws.com" }
    }]
  })
}

# Compliant policy data source
data "aws_iam_policy" "read_only" {
  name = "AmazonS3ReadOnlyAccess"
}

# Compliant attachment
resource "aws_iam_policy_attachment" "safe_attachment" {
  name       = "read-only-access"
  policy_arn = data.aws_iam_policy.read_only.arn
  roles      = [aws_iam_role.developer_role.name]
}
