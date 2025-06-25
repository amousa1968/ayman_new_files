resource "aws_iam_policy_attachment" "direct_admin_attach" {
  name       = "direct-admin-attach"
  policy_arn = "arn:aws:iam::aws:policy/AdminAccessFull"
  roles      = ["ops-role"]
}
