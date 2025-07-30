resource "aws_s3_bucket" "static_logs" {
  bucket = "cloud-migration-static-logs"
  force_destroy = true
  tags = { Name = "AppStaticLogs" }
}
