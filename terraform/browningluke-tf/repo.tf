locals {
  env = "browningluke-tf"

  data_path = "${path.module}/../../data"
}

module "github_repos" {
  source = "../_modules/gh-repo"

  repo_config = yamldecode(file("${local.data_path}/${local.env}.yml"))
}
