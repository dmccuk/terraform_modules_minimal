# Terraform minimal

 * No network ingress or egress rules (only default). Your VPC rules should include the required ones already.
 * Due to multiple users, SSH keys needs to be updated by each new user in two files before you run Terraform:
   
````
vagrant@devops-box:~/terraform_modules$ cat modules/aws_key/vars.tf 
variable "key_name" {
  default = "ssh_key_dm" #<--- HERE: use your own initials
}
````

&

````
vagrant@devops-box:~/terraform_modules$ cat modules/ec2/vars.tf 
variable securitygroups {
  type = "list"
}
variable "count" {}
variable "instance_type" {}
variable "key_name" {
  default = "ssh_key_dm" #<--- HERE: use your own initials
}
variable "ami" {}
variable "name_prefix" {}
variable "provision_script" {}
````

This is a first draft that works at home. Further configuration may be required to work within your specific environment.

Thanks - Dennis
