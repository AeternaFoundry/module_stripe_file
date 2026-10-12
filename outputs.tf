output "files_id" {
  description = "Map of id values across all files, keyed the same as var.files except keys with no id are omitted"
  value       = { for k, v in stripe_file.files : k => v.id if v.id != null && length(v.id) > 0 }
}
output "files_created" {
  description = "Map of created values across all files, keyed the same as var.files except keys with no created are omitted"
  value       = { for k, v in stripe_file.files : k => v.created if v.created != null }
}
output "files_expires_at" {
  description = "Map of expires_at values across all files, keyed the same as var.files except keys with no expires_at are omitted"
  value       = { for k, v in stripe_file.files : k => v.expires_at if v.expires_at != null }
}
output "files_filename" {
  description = "Map of filename values across all files, keyed the same as var.files except keys with no filename are omitted"
  value       = { for k, v in stripe_file.files : k => v.filename if v.filename != null && length(v.filename) > 0 }
}
output "files_object" {
  description = "Map of object values across all files, keyed the same as var.files except keys with no object are omitted"
  value       = { for k, v in stripe_file.files : k => v.object if v.object != null && length(v.object) > 0 }
}
output "files_purpose" {
  description = "Map of purpose values across all files, keyed the same as var.files except keys with no purpose are omitted"
  value       = { for k, v in stripe_file.files : k => v.purpose if v.purpose != null && length(v.purpose) > 0 }
}
output "files_size" {
  description = "Map of size values across all files, keyed the same as var.files except keys with no size are omitted"
  value       = { for k, v in stripe_file.files : k => v.size if v.size != null }
}
output "files_title" {
  description = "Map of title values across all files, keyed the same as var.files except keys with no title are omitted"
  value       = { for k, v in stripe_file.files : k => v.title if v.title != null && length(v.title) > 0 }
}
output "files_type" {
  description = "Map of type values across all files, keyed the same as var.files except keys with no type are omitted"
  value       = { for k, v in stripe_file.files : k => v.type if v.type != null && length(v.type) > 0 }
}
output "files_url" {
  description = "Map of url values across all files, keyed the same as var.files except keys with no url are omitted"
  value       = { for k, v in stripe_file.files : k => v.url if v.url != null && length(v.url) > 0 }
}

