variable "read_capacity" {
  description = "The number of read units for the DynamoDB table."
  default     = 5
}

variable "write_capacity" {
  description = "The number of write units for the DynamoDB table."
  default     = 5
}
