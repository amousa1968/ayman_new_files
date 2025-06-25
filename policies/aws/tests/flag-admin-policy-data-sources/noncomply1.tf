data "aws_iam_policy" "noncomply_admin_policy" {
  name = "adminaccess-policy"
  arn  = "arn:aws:iam::aws:policy/AdminAccessFull"
}
