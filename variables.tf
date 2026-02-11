variable "message" {
  description = "Message written to build/hello.txt"
  type        = string
  default     = "Hello Terraform (local-only starter)"
}

variable "owner" {
  description = "Owner name used in generated files"
  type        = string
  default     = "kakeru-lab"
}
