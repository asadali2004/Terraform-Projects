Terraform Project: EC2 Instance with Custom Security Group

=======================================
📦 PROJECT OVERVIEW
---------------------------------------
This Terraform configuration deploys an AWS EC2 instance (Ubuntu 22.04 LTS) in the `ap-south-1` (Mumbai) region and creates a custom security group with well-defined inbound and outbound rules for common protocols (SSH, HTTP, HTTPS) for both IPv4 and IPv6 traffic.

=======================================
🔧 WHAT IT DOES
---------------------------------------
1. Uses the official latest Ubuntu 22.04 AMI from Canonical.
2. Launches a t2.micro EC2 instance (Free Tier eligible).
3. Uses the default VPC.
4. Creates a custom security group named `allow_tls` with the following rules:
   - ✅ Ingress Rules:
     • HTTP (port 80) — IPv4 & IPv6
     • HTTPS (port 443) — IPv4 & IPv6
     • SSH (port 22) — IPv4 & IPv6
   - ✅ Egress Rules:
     • Allow all outbound traffic (both IPv4 and IPv6)

=======================================
🔐 SECURITY GROUP RULES
---------------------------------------
✔ Ingress (Inbound):
- Port 22 (SSH): From 0.0.0.0/0 and ::/0
- Port 80 (HTTP): From 0.0.0.0/0 and ::/0
- Port 443 (HTTPS): From default VPC CIDR and ::/0

✔ Egress (Outbound):
- All traffic allowed (ip_protocol = "-1") for both IPv4 and IPv6

=======================================
🚀 HOW TO DEPLOY
---------------------------------------
1. Initialize Terraform:
   terraform init

2. Preview changes:
   terraform plan

3. Apply configuration:
   terraform apply

4. To destroy resources:
   terraform destroy

=======================================
📁 FILE STRUCTURE
---------------------------------------
- main.tf — contains all Terraform resources:
   • provider, data sources, EC2 instance
   • security group + rules

=======================================
⚠️ IMPORTANT NOTES
---------------------------------------
- EC2 instance is created without a key pair unless added manually.
- SSH is open to all (0.0.0.0/0); restrict it to your IP for better security.
- Make sure your AWS CLI is configured with valid credentials before running.

=======================================
✍️ AUTHOR
---------------------------------------
This project is built for learning purposes by a Terraform enthusiast exploring AWS security groups and EC2 provisioning.

