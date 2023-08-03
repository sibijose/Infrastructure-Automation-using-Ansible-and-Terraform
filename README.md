# Infrastructure-Automation-using-Ansible-and-Terraform

# Terraform Installation and Infrastructure Provisioning Automation

## Description

This project showcases the automation of Terraform installation using Ansible and the provisioning of infrastructure resources using Terraform. The goal is to streamline the setup process and enable efficient management of cloud infrastructure through automation.

Installation
To run the automation scripts, follow the steps below:

Ensure you have Ansible installed on your machine.

Run the following commands to install Terraform and its dependencies via Ansible:


##### sudo yum install python-pip
##### sudo yum install python3-pip
##### pip3 install ansible

## Usage

Terraform Installation using Ansible
Open the terminal and navigate to the project directory.

Execute the Ansible playbook to install Terraform:

### ansible-playbook main.yml

This will download the Terraform binary files, unzip them, and move the Terraform binary to the /usr/local/bin directory. The installation process will be automated, making it easy to set up Terraform on your machine.

Infrastructure Provisioning using Terraform
Ensure you have Terraform installed on your machine (if not, refer to the "Terraform Installation using Ansible" section).

Navigate to the directory containing the Terraform configuration files (e.g., infra/).

Initialize Terraform:

#### terraform init

Review the variables.tf file and modify the default values to suit your infrastructure requirements.

Apply the Terraform configuration to create the infrastructure:

#### terraform apply

Terraform will provision the specified infrastructure resources, such as AWS EC2 instances, security groups, and key pairs, based on the configuration provided in the main.tf file.

### Notes

The automation scripts are designed for AWS infrastructure. Modify the Terraform configuration files (main.tf, variables.tf, etc.) to support other cloud providers if required.

Always review the Terraform configuration files before applying them to avoid unintended changes to your cloud environment.

Make sure to have appropriate AWS credentials configured on your machine for Terraform to authenticate with AWS and create resources.
