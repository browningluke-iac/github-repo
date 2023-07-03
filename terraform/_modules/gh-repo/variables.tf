variable "repo_config" {
  description = "data defining repos"
  type = list(object({
    name        = string
    description = optional(string, "")
    public      = optional(bool, false)
    is_template = optional(bool, false)
    archived    = optional(bool, false)
    has = object({
      downloads = optional(bool, false)
      issues    = optional(bool, false)
      projects  = optional(bool, false)
      wiki      = optional(bool, false)
    })
    init      = optional(bool, false)
    gitignore = optional(string, "")
    merge = optional(object({
      auto          = optional(bool, false)
      delete_branch = optional(bool, false)
      types = optional(object({
        commit = optional(bool, true)
        squash = optional(bool, true)
        rebase = optional(bool, true)
      }), {})
    }), {})
    template = optional(object({
      owner = string
      repo  = string
    }), null)
  }))
}
