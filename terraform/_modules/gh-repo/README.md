# Terraform Github Repo Module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.7 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repo_config"></a> [repo\_config](#input\_repo\_config) | data defining repos | <pre>list(object({<br>    name        = string<br>    description = optional(string, "")<br>    public      = optional(bool, false)<br>    is_template = optional(bool, false)<br>    archived    = optional(bool, false)<br>    has = object({<br>      downloads = optional(bool, false)<br>      issues    = optional(bool, false)<br>      projects  = optional(bool, false)<br>      wiki      = optional(bool, false)<br>    })<br>    init      = optional(bool, false)<br>    gitignore = optional(string, "")<br>    merge = optional(object({<br>      auto          = optional(bool, false)<br>      delete_branch = optional(bool, false)<br>      types = optional(object({<br>        commit = optional(bool, true)<br>        squash = optional(bool, true)<br>        rebase = optional(bool, true)<br>      }), {})<br>    }), {})<br>    template = optional(object({<br>      owner = string<br>      repo  = string<br>    }), null)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
