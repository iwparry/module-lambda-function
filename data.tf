data "archive_file" "lambda" {
  type        = "zip"
  source_file = file(var.archive_source_file)
  output_path = file(var.archive_output_path)
}