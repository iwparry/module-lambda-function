resource "aws_iam_role" "lambda_assume_policy" {
  name = "lambda-assume-policy"

  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_role_policy" "lambda_policy" {
  name = "${var.name}-policy"
  role = aws_iam_role.lambda_assume_policy.id

  policy = var.lambda_role_policy
}