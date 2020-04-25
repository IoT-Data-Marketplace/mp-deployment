data "aws_availability_zones" "available_zones" {}

data "aws_caller_identity" "caller_identity" {}

data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}

data "helm_repository" "strimzi" {
  name = "strimzi"
  url  = "https://strimzi.io/charts/"
}


data "helm_repository" "confluentinc" {
  name = "confluentinc"
  url  = "https://confluentinc.github.io/cp-helm-charts/"
}
