# Install ARMOR ANYWHERE agent 3.0  via Terraform and Ansible:

This will provide an Ubuntu machine in AWS for demo'ing ARMOR Anywhere Agent 3.0 installed on an Ubuntu machine.

You will need to input your AWS user credentials (with a user that has privileges to make an EC2 instance into the `/terraform_aws/variables.tf` file.

This folder contains sub folders with /ansible that holds the playbook file you want to deploy on the server, the default playbook filename is: armor.yml
You will need to alter the `main.tf` file in the `terraform_aws folder` if you plan to change this filename.

To initiazlize the Terraform , go into `/terraform_aws` folder and run `terraform init` - This will download the needed plugins Terraform uses to create an AWS instance. Then run `terraform apply` and it will build out in AWS.

Go back to the root directory of this app, containing this README.md file, and execute the install script, or run `ansible-playbook main.yml` from command line.  

This calls a playbook which refers to the `/terraform_aws` directory.
Runs the Terraform `main.tf` 
This script eventually sets up ansible folder to upload the ansible file (armor.yml) to the newly created remote server using the `ubuntu` ssh keys.
The remote server then follows the playbook that was uploaded, and installs the armor agent instance.


