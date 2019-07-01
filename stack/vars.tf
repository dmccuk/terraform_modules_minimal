variable "count_micro" {
  default = 1
}
variable "count_small" {
  default = 0
}
variable "count_med" {
  default = 0
}
variable "count_gitlab" {
  default = 0
}
variable "count_jenkins" {
  default = 0
}

#variable "access_key" {} # replaced by aws credentials
#variable "secret_key" {} # replaced by aws credentials
variable "region" {
  default = "ap-south-1"
}
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 80
}

variable "ami" { # Ubuntu 16.04
  default = "ami-00dd92d5ec4efe42f"
}
variable "SECURITY_GROUP_IDS" {
  default = "sg-0a86d93792aca562b"
}
variable "INSTANCE_NAME" {
  default = "DevOps Training"
}

