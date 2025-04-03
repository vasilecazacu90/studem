variable "instance_type" {
  description = "Type of the instance"
  type        = string
  default = "t3.micro"
}

variable "image_id" {
  type        = string
  description = "The image which will be assigne to the instance"
  default = "ami-089146c5626baa6bf"
}

variable "security_group_id" {
  type        = string
  description = "The ID of the security group to associate with the instance"
}

variable "key_name" {
  type        = string
  description = "The name of the key pair to use for the instance"
}