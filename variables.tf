variable "domain" {
  default = "sre-workshop.nl"
}

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "aws_region" {
  type = string
  default     = "us-east-1"
  description = "AWS region"
}