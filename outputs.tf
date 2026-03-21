output "cloudfront_url" {
  description = "CloudFront domain — use this to test before DNS propagates"
  value       = "https://${aws_cloudfront_distribution.portfolio.domain_name}"
}

output "cloudfront_distribution_id" {
  description = "Distribution ID — needed for cache invalidation in CI/CD"
  value       = aws_cloudfront_distribution.portfolio.id
}

output "s3_bucket_name" {
  description = "S3 bucket name — needed for CI/CD deploy step"
  value       = aws_s3_bucket.portfolio.bucket
}

output "route53_nameservers" {
  description = "Paste these 4 nameservers into GoDaddy"
  value       = aws_route53_zone.portfolio.name_servers
}

output "site_url" {
  description = "Your live portfolio URL"
  value       = "https://${var.domain_name}"
}
