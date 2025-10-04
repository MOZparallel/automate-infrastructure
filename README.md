# 🚀 AWS Automated Infrastructure with Terraform

[![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/) 
[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)

---

## 💡 Project Overview

This project **automates a complete AWS cloud infrastructure** using **Terraform**.  
It includes:

- **VPC & Subnets** → Secure networking architecture  
- **EC2 Instances** → Auto Scaling private servers  
- **Application Load Balancer (ALB)** → Distributes traffic  
- **RDS MySQL** → Multi-AZ high availability  
- **Bastion Host** → Secure SSH access  

This project is **production-ready**, **modular**, and **perfect for portfolio/resume showcase**.

---

## 🏗️ Architecture Diagram

![Infrastructure Diagram](screenshots/infrastructure.png)

---

## 🏷️ Modules & Screenshots

### 1️⃣ VPC & Networking
- Public & private subnets  
- Internet Gateway & NAT Gateway  
- Routing & security  

📸 Screenshots:  
![VPC Resource Map](screenshots/vpc%20resurce%20map.png)  
![VPC Dashboard](screenshots/vpc%20dashboard.png)

### 2️⃣ Database Module
- MySQL RDS instance (Primary & optional Read Replica)  
- Multi-AZ for high availability  

📸 Screenshots:  
![Database Subnet Group](screenshots/database%20subnet%20group.png)  
![Database Instance](screenshots/database.png)  
![Database Subnet Group (alt)](screenshots/database_subnet_group.png)

### 3️⃣ Compute & Load Balancer
- EC2 Auto Scaling in private subnets  
- Application Load Balancer  
- Bastion Host for secure access  

📸 Screenshot:  
![EC2 Dashboard](screenshots/ec2_dashboard.png)

---

## ⚙️ Terraform Workflow

| Step                  | Command              | Screenshot                           |
|-----------------------|----------------------|--------------------------------------|
| Initialize Terraform  | `terraform init`     | ![Terraform Init](screenshots/terraform.init.png) |
| Validate Configuration| `terraform validate` | ![Terraform Validate](screenshots/terraform.validate.png) |
| Plan Deployment       | `terraform plan`     | ![Terraform Plan](screenshots/terraform.plan.png) |
| Apply Infrastructure  | `terraform apply`    | ![Terraform Apply](screenshots/terraform.apply.png) |
| View Outputs          | `terraform output`   | ![Terraform Output](screenshots/terraform.output.png) |

---

## 📤 Terraform Outputs

| Output Name         | Description                                |
|---------------------|--------------------------------------------|
| `bastion_public_ip` | Public IP for Bastion Host (SSH access)    |
| `load_balancer_dns` | DNS endpoint of the deployed application   |
| `rds_endpoint`      | Primary RDS database endpoint              |

---

## 🛠️ Technologies Used

- **Terraform** → Infrastructure as Code (IaC)  
- **AWS** → VPC, EC2, RDS, ALB, Security Groups  
- **MySQL** → Relational Database  
- **Git & GitHub** → Version Control  

---

## 🚀 Deployment Steps

```bash
# Clone the repository
git clone <your_repo_url>
cd automate-infrastructure

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Plan changes
terraform plan

# Deploy infrastructure
terraform apply -auto-approve

# View outputs
terraform output

---

## 🎯 Key Skills Demonstrated

AWS Cloud Architecture → VPC, EC2, ALB, RDS

Terraform IaC & Reusable Modules → Modular, scalable infrastructure

High Availability & Fault Tolerance → Multi-AZ, Load Balancer

Secure Access Management → Bastion Host, Private Subnets

Version Control & Documentation → GitHub, professional project reportin

---

## ✅ Why This Project Stands Out

Professional portfolio-ready → Showcases cloud automation skills

End-to-end cloud deployment → Networking, compute, database

Hands-on DevOps skills → Terraform, AWS, MySQL, GitHub

