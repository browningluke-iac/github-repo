module "github_repos" {
  source = "../_modules/gh-repo"

  repo_config = file("${path.module}/../../data/browningluke-iac.yml")
}
