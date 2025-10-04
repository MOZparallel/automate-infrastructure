# 🚀 AWS Automated Infrastructure with Terraform

Automate the deployment of a complete AWS infrastructure using Terraform.  
This project provisions **VPC, EC2, RDS, Security Groups, and Load Balancer** using reusable modules. It’s ideal for learning **Infrastructure as Code (IaC)** and real-world cloud deployments.

---

## 📌 Infrastructure Overview

- **Bastion Host:** Secure SSH access to private instances  
- **Application Servers:** Auto Scaling group behind a Load Balancer  
- **RDS Database:** Multi-AZ deployment for high availability  

![Infrastructure Diagram](screenshots/infrastructure.png)

---

## 🏗️ Project Modules

### 1. VPC Module
- Custom VPC with **public and private subnets**  
- Internet Gateway & NAT Gateway for external connectivity  

![VPC Resource Map](screenshots/vpc_resource_map.png)  
![VPC Dashboard](screenshots/vpc_dashboard.png)

### 2. Database Module
- **Primary DB:** MySQL RDS instance  
- **Read Replica:** Optional, for high availability & read scaling  

![Database Subnet Group](screenshots/database_subnet_group.png)  
![Primary Database](screenshots/database.png)

### 3. Compute & Load Balancer Module
- EC2 instances in private subnets  
- Application Load Balancer for traffic distribution  
- Bastion host for secure SSH access  

![EC2 Dashboard](screenshots/ec2_dashboard.png)

---

## ⚙️ Terraform Workflow

| Step                  | Command              | Screenshot                          |
|-----------------------|---------------------|-------------------------------------|
| Initialize Terraform  | `terraform init`     | ![Terraform Init](screenshots/terraform_init.png) |
| Validate Configuration| `terraform validate` | ![Terraform Validate](screenshots/terraform_validate.png) |
| Plan Deployment       | `terraform plan`     | ![Terraform Plan](screenshots/terraform_plan.png) |
| Apply Infrastructure  | `terraform apply`    | ![Terraform Apply](screenshots/terraform_apply.png) |
| View Outputs          | `terraform output`   | ![Terraform Output](screenshots/terraform_output.png) |

---

## 📤 Terraform Outputs

| Output Name         | Description                                |
|---------------------|--------------------------------------------|
| `bastion_public_ip` | Public IP to SSH into Bastion Host         |
| `load_balancer_dns` | DNS endpoint for the deployed application |
| `rds_endpoint`      | Primary RDS database endpoint              |

---

## 🛠️ Technologies Used

- **Terraform:** Infrastructure as Code  
- **AWS:** VPC, EC2, RDS, ALB, Security Groups  
- **MySQL:** Database  
- **Git & GitHub:** Version Control  

---

## 🚀 Deployment Steps

```bash
# Clone repo
git clone <your_repo_url>
cd automate-infrastructure

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Plan the infra
terraform plan

# Apply the infra
terraform apply -auto-approve

# View outputs
terraform output

✅ Key Learning Outcomes

Hands-on experience with AWS VPC, EC2, RDS, ALB

Using Terraform modules for reusable and scalable infrastructure

Implementing high-availability and secure cloud architecture

Creating well-documented, professional project reports
