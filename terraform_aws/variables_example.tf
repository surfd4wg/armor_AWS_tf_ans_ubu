variable "public_key_path" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/<public key name>.pub"
}

variable "private_key_path" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/<private key name>.pem"
}

variable "project_name" {
  description = "<your org name> terraform ARMOR aws DEMO"
  default     = "terraformARMORaws"
}

variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "ubuntu"
}

variable "access_key" {
  description = "Access Key to AWS account"
  default     = "<your access key>"
}

variable "secret_key" {
  description = "Secret Key to AWS account"
  default     = "<your secret key>"
}
