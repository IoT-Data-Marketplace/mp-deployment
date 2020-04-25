resource "aws_ecr_repository_policy" "ecr_repository_policy" {
  for_each = toset(local.repositories)
  repository = aws_ecr_repository.mp_ecr_repository[each.key].name

  policy = data.aws_iam_policy_document.ecr_iam_policy_document.json
}


data "aws_iam_policy_document" "ecr_iam_policy_document" {
  statement {
    sid = "AllowAccountECRAccess"

    effect = "Allow"

    actions = [
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "ecr:BatchCheckLayerAvailability",
      "ecr:PutImage",
      "ecr:InitiateLayerUpload",
      "ecr:UploadLayerPart",
      "ecr:CompleteLayerUpload",
      "ecr:DescribeRepositories",
      "ecr:GetRepositoryPolicy",
      "ecr:ListImages",
      "ecr:DeleteRepository",
      "ecr:BatchDeleteImage",
      "ecr:SetRepositoryPolicy",
      "ecr:DeleteRepositoryPolicy"
    ]

    principals {
      identifiers = [
        var.aws_account_id
      ]
      type = "AWS"
    }
  }

}