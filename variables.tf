variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = list(string)
  #default     = "webserver"
}

variable "ami" {

  description = "aws ami "
  type        = string
  default     = "ami-013e83f579886baeb"
}
variable "instance_type" {
  description = "aws instance type"
  type        = string
  default     = "t2.large"

}
variable "region" {
  description = "instance region"
  type        = string
  default     = "us-east-1"

}

