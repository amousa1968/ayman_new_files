resource "aws_iam_policy" "comply_admin_policy" {
  name = "comply-admin-policy"
  arn  = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
