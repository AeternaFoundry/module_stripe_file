variable "files" {
  description = <<EOT
Map of files, attributes below
Required:
    - file
    - purpose
Optional:
    - file_link_data
EOT

  type = map(object({
    file    = string
    purpose = string
    file_link_data = optional(object({
      create     = bool
      expires_at = optional(number)
      metadata   = optional(map(string))
    }))
  }))
}

