# Automate AWS Infrastructure using Terraform

![Terraform](https://img.shields.io/badge/Terraform-v1.6.0-blue?logo=terraform)
![AWS Region](https://img.shields.io/badge/AWS-ap--south--1-orange?logo=amazon-aws)

---

## Introduction
This project demonstrates how to **automate AWS infrastructure deployment** using **Terraform**.  
It is designed for **learning and hands-on practice** as an AWS Engineer project.  

The project provisions the following resources:  

- **VPC** with public and private subnets  
- **EC2 Bastion Host** for secure SSH access  
- **RDS MySQL Database** (Primary + Read Replica)  
- **Application Load Balancer (ALB)** for traffic distribution  
- **Security Groups** to control network access  

The main goal is to provide a **fully automated, secure, and highly available AWS environment**.

---

## Architecture Diagram
![Infrastructure](screenshots/infrastructure.png)

### VPC Overview
![VPC Resource Map](screenshots/vpc resurce map.png)  
![VPC Dashboard](screenshots/vpc dashboard.png)  

### Database Setup
- **Primary DB:** Main MySQL RDS instance  
- **Read Replica:** Optional for read scaling and high availability  

![Database Subnet Group](screenshots/database subnet group.png)  
![Primary Database](screenshots/database.png)  

---

## Terraform Workflow

| Step | Command | Screenshot |
|------|---------|------------|
| Initialize Terraform | `terraform init` | ![Terraform Init](screenshots/terraform.init.png) |
| Validate Configuration | `terraform validate` | ![Terraform Validate](screenshots/terraform.validate.png) |
| Plan Deployment | `terraform plan` | ![Terraform Plan](screenshots/terraform.plan.png) |
| Apply Infrastructure | `terraform apply` | ![Terraform Apply](screenshots/terraform.apply.png) |
| View Outputs | Terraform outputs | ![Terraform Outputs](screenshots/terraform.output.png) |

---

## Terraform Outputs

| Output Name | Description |
|-------------|-------------|
| `bastion_public_ip` | Public IP to SSH into Bastion Host |
| `load_balancer_dns` | DNS to access the deployed application |
| `rds_endpoint` | Primary RDS database endpoint |
| `replica_endpoint` | Read Replica RDS endpoint |
| `vpc_id` | VPC ID of the deployed network |

---

## Project Folder Structure
