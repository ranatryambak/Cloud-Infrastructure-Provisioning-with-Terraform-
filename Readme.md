# Terraform AWS Infrastructure Deployment

This project demonstrates how to use **Terraform** to automate cloud infrastructure deployment on **AWS**.  
It covers creating resources such as VPC, subnets, EC2 instances, security groups, and more — all from code instead of manual setup.

---

## 📌 Prerequisites
Before starting, make sure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- An [AWS account](https://aws.amazon.com/)
- AWS CLI installed and configured with your credentials:
  ```bash
  aws configure

🚀 Steps to Run This Project

### Initialize Terraform 
terraform init

### Preview the changes Terraform will make:
terraform plan

### Apply the configuration to create resources:
terraform apply
### Type yes when prompted.

### Verify your resources:
Log in to the AWS console
Check the services (VPC, EC2, etc.) created by Terraform 

### Destroy all resources when done to avoid costs:
terraform destroy
### Type yes when prompted.


🖼 Architecture Diagram

+-------------------+
|     AWS Cloud     |
+-------------------+
         |
         v
+-------------------+        +-------------------+
|    VPC Network    |        |   Internet Gateway |
+-------------------+        +-------------------+
         |                             |
         v                             v
+-------------------+        +-------------------+
|   Public Subnet   |        |   Private Subnet  |
+-------------------+        +-------------------+
         |
         v
+-------------------+
|  EC2 Instance(s)  |
+-------------------+
         |
         v
+-------------------+
|  Security Group   |
+-------------------+


📝 Notes
Keep your AWS credentials safe — never commit them to GitHub.
Modify .tf files to change your infrastructure and run terraform apply again to update.
Always run terraform destroy after testing to avoid unnecessary charges.