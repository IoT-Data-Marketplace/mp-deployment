resource "aws_ecr_repository" "mp_ecr_repository" {
  for_each = toset(local.repositories)
  name                 = each.key
}