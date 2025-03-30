variable "region" {
  default = "eu-west-1"
}

variable "terraform" {
  default = true
}

variable "archive_source_file" {
}

variable "archive_output_path" { 
}

variable "runtime" {
}

variable "handler" {
}

variable "name" {
}

variable "assume_role_policy" {
  default = "policy/assume-role-policy.json"
}

variable "lambda_role_policy" {
  default = "policy/lambda-role-policy.json"
}