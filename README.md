# 🚀 AWS Automated Infrastructure with Terraform

This project automates AWS infrastructure setup using Terraform.  
It provisions VPC, EC2, RDS, Security Groups, and Load Balancer with reusable modules.

---

## 📌 Project Overview

### VPC Overview
- Custom VPC with public and private subnets
- Internet Gateway and NAT Gateway for connectivity

![VPC Resource Map](screenshots/vpc_resource_map.png)  
![VPC Dashboard](screenshots/vpc_dashboard.png)

---

### Database Setup
- **Primary DB**: MySQL RDS instance  
- **Read Replica**: Optional for high availability & read scaling  

![Database Subnet Group](screenshots/database_subnet_group.png)  
![Primary Database](screenshots/database.png)

---

### Infrastructure Overview
- Bastion Host (for SSH into private instances)  
- Application Servers (Auto Scaling behind Load Balancer)  
- RDS Database (Multi-AZ)  

![Infrastructure](screenshots/infrastructure.png)

---

## ⚙️ Terraform Workflow

| Step                  | Command              | Screenshot                          |
|-----------------------|----------------------|-------------------------------------|
| Initialize Terraform  | `terraform init`     | ![Terraform Init](screenshots/terraform_init.png) |
| Validate Configuration| `terraform validate` | ![Terraform Validate](screenshots/terraform_validate.png) |
| Plan Deployment       | `terraform plan`     | ![Terraform Plan](screenshots/terraform_plan.png) |
| Apply Infrastructure  | `terraform apply`    | ![Terraform Apply](screenshots/terraform_apply.png) |
| View Outputs          | `terraform output`   | ![Terraform Output](screenshots/terraform_output.png) |

---

## 📤 Terraform Outputs

| Output Name         | Description                                      |
|---------------------|--------------------------------------------------|
| `bastion_public_ip` | Public IP to SSH into Bastion Host                |
| `load_balancer_dns` | DNS to access the deployed application            |
| `rds_endpoint`      | Primary RDS database endpoint                     |

---

## 🛠️ Technologies Used
- **Terraform** (Infrastructure as Code)
- **AWS** (VPC, EC2, RDS, ALB, Security Groups)
- **MySQL** (Database)
- **GitHub** (Version Control)

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

