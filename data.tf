data "archive_file" "lambda" {
  type        = "zip"
  source_file = var.archive_source_file
  output_path = var.archive_output_path
}