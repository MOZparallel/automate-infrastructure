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

## 🏗️ Infrastructure Architecture


Internet
    ↓
Load Balancer (Public)
    ↓
Web Servers (Private - Auto Scaling)
    ↓
Database (Private - Multi-AZ)


*Key Points:*
- Web servers are in private subnets (not directly accessible from internet)
- Load Balancer distributes traffic to web servers
- Database is highly available with Multi-AZ setup
- Bastion host provides secure access for administration

---

## 💡 What I Learned

Through this project, I gained hands-on experience with:

1. *Infrastructure as Code (IaC)*
   - Writing infrastructure in code format
   - Version controlling infrastructure
   - Automating deployments

2. *AWS Cloud Services*
   - VPC and networking concepts
   - EC2 and Auto Scaling
   - RDS database management
   - Load balancing

3. *Security Best Practices*
   - Network segmentation (public/private subnets)
   - Security groups and access control
   - Bastion host pattern for secure access

4. *High Availability*
   - Multi-AZ deployment
   - Auto Scaling for handling traffic
   - Load balancing

---### Access Your Application
bash
# Get the load balancer URL
terraform output load_balancer_dns

# Open in browser
http://


### Connect to Private Servers
bash
# Get Bastion IP
terraform output bastion_public_ip

# SSH to Bastion
ssh -i your-key.pem ec2-user@


### Connect to Database
bash
# Get database endpoint
terraform output rds_endpoint

# Connect from Bastion or private server
mysql -h  -u admin -p


---

## 🗑️ Cleanup (Destroy Resources)

*Important:* To avoid AWS charges, destroy resources when done:

bash
terraform destroy


Type yes when prompted. This will delete all created resources.

---

## 📚 Skills Demonstrated

This project showcases:

✅ Cloud Computing (AWS)  
✅ Infrastructure as Code (Terraform)  
✅ Networking (VPC, Subnets, Gateways)  
✅ Security (Security Groups, Private Subnets)  
✅ High Availability (Multi-AZ, Auto Scaling)  
✅ Version Control (Git/GitHub)  
✅ Linux/Command Line  
✅ Problem Solving  

---

## 🎓 Future Improvements

As I continue learning, I plan to add:

- [ ] Monitoring with CloudWatch
- [ ] Automated backups
- [ ] CI/CD pipeline integration
- [ ] Container deployment (Docker/ECS)
- [ ] Infrastructure cost optimization

---
