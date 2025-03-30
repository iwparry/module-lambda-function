resource "aws_lambda_function" "test_lambda" {
  filename      = data.archive_file.lambda.output_path
  function_name = "${var.region}-${var.name}"
  role          = aws_iam_role.lambda_assume_policy.arn
  handler       = var.handler
  runtime       = var.runtime

  tags = {
    "name"      = var.name
    "region"    = var.region
    "terraform" = var.terraform
  }
}