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
  validation {
    condition = alltrue([
      for k, v in var.files : (
        contains(["account_requirement", "additional_verification", "business_icon", "business_logo", "customer_signature", "dispute_evidence", "document_provider_identity_document", "finance_report_run", "financial_account_statement", "identity_document", "identity_document_downloadable", "issuing_regulatory_reporting", "pci_document", "platform_terms_of_service", "selfie", "sigma_scheduled_query", "tax_document_user_upload", "terminal_android_apk", "terminal_reader_splashscreen", "terminal_wifi_certificate", "terminal_wifi_private_key"], v.purpose)
      )
    ])
    error_message = "must be one of: \"account_requirement\", \"additional_verification\", \"business_icon\", \"business_logo\", \"customer_signature\", \"dispute_evidence\", \"document_provider_identity_document\", \"finance_report_run\", \"financial_account_statement\", \"identity_document\", \"identity_document_downloadable\", \"issuing_regulatory_reporting\", \"pci_document\", \"platform_terms_of_service\", \"selfie\", \"sigma_scheduled_query\", \"tax_document_user_upload\", \"terminal_android_apk\", \"terminal_reader_splashscreen\", \"terminal_wifi_certificate\", \"terminal_wifi_private_key\""
  }
}

