output "files_id" {
  description = "Map of id values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.id }
}
output "files_created" {
  description = "Map of created values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.created }
}
output "files_expires_at" {
  description = "Map of expires_at values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.expires_at }
}
output "files_filename" {
  description = "Map of filename values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.filename }
}
output "files_object" {
  description = "Map of object values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.object }
}
output "files_purpose" {
  description = "Map of purpose values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.purpose }
}
output "files_size" {
  description = "Map of size values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.size }
}
output "files_title" {
  description = "Map of title values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.title }
}
output "files_type" {
  description = "Map of type values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.type }
}
output "files_url" {
  description = "Map of url values across all files, keyed the same as var.files"
  value       = { for k, v in stripe_file.files : k => v.url }
}

