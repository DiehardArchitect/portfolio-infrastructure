variable "domain_name" {
  description = "Your root domain (e.g. crhone.com)"
  type        = string
}

locals {
  www_domain = "www.${var.domain_name}"
}
