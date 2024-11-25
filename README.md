# AWS Infrastructure Automation with Terraform  

## Overview  
This project automates the deployment of AWS infrastructure using **Terraform**. It includes the following configurations:  
- **Virtual Private Cloud (VPC)** with subnets, route tables, and an Internet Gateway.  
- Launching an **EC2 instance** with an attached EBS volume.  
- Installing and configuring **httpd** and **PHP** to serve a website.  
- Pulling website content from **GitHub**.  

The project demonstrates the principles of **Infrastructure as Code (IaC)**, automating cloud infrastructure setup and configuration.  

---

## Features  
1. **Virtual Private Cloud (VPC):**  
   - Creates a VPC with a custom CIDR block.  
   - Configures subnets across multiple availability zones.  
   - Attaches an Internet Gateway for public connectivity.  
   - Configures route tables and associations.  

2. **EC2 Instance Deployment:**  
   - Provisions an EC2 instance using the default AWS profile.  
   - Attaches an EBS volume for additional storage.  

3. **Web Server Setup:**  
   - Installs and starts **httpd** and **PHP**.  
   - Mounts the EBS volume to the instance.  
   - Automatically retrieves PHP code from GitHub.  

4. **Website Deployment:**  
   - Automatically opens the deployed website using the EC2 instance’s public IP.  

---

## Prerequisites  
- **Terraform** (v1.x or later)  
- **AWS CLI** configured with a default profile  
- Access to an AWS account  
- Basic knowledge of Terraform and AWS  

---

## File Structure  
```plaintext
├── provider.tf       # Configures the AWS provider  
├── variable.tf       # Contains variables for CIDR blocks, regions, etc.  
├── vpc.tf            # Configures the VPC, subnets, and route tables  
├── ec2.tf            # Provisions the EC2 instance and EBS volume  
├── user_data.sh      # Bash script for instance configuration (optional)  
└── outputs.tf        # Defines output values (e.g., public IP)  
