resource "stripe_file" "files" {
  for_each = var.files

  file           = each.value.file
  purpose        = each.value.purpose
  file_link_data = each.value.file_link_data
}

