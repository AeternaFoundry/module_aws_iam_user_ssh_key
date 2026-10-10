variable "iam_user_ssh_keys" {
  description = <<EOT
Map of iam_user_ssh_keys, attributes below
Required:
    - encoding
    - public_key
    - username
Optional:
    - status
EOT

  type = map(object({
    encoding   = string
    public_key = string
    username   = string
    status     = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

