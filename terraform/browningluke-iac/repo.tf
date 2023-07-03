module "github_repos" {
  source  = "app.terraform.io/browningluke/repo/github"
  version = "~> 1.0"

  repo_config = file("${path.module}/../../data/browningluke-iac.yml")
}
