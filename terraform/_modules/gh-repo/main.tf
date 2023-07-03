resource "github_repository" "repo" {
  for_each = {
    for repo in var.repo_config : repo.name => repo
  }

  # Meta
  name        = each.key
  description = each.value.description
  visibility  = each.value.public ? "public" : "private"
  is_template = each.value.is_template

  archived = each.value.archived

  # Has ...
  has_downloads = each.value.has.downloads
  has_issues    = each.value.has.issues
  has_projects  = each.value.has.projects
  has_wiki      = each.value.has.wiki

  # Init
  auto_init          = each.value.init
  gitignore_template = each.value.gitignore

  # Merges
  allow_auto_merge       = each.value.merge.auto
  delete_branch_on_merge = each.value.merge.delete_branch

  allow_merge_commit = each.value.merge.types.commit
  allow_squash_merge = each.value.merge.types.squash
  allow_rebase_merge = each.value.merge.types.rebase

  # Template
  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []

    content {
      owner                = template.value.owner
      repository           = template.value.repo
      include_all_branches = false
    }
  }
}
