Terraform Project: EC2 Instance with Custom Security Group (Static AMI)

=======================================
📦 PROJECT OVERVIEW
---------------------------------------
This Terraform project provisions an EC2 instance in the AWS Mumbai region (`ap-south-1`) using a static Ubuntu AMI ID. It also configures a custom security group with rules to allow secure inbound access (SSH, HTTPS) and unrestricted outbound access (IPv4 & IPv6).

=======================================
🔧 WHAT IT DOES
---------------------------------------
1. Creates a t2.micro EC2 instance using a fixed AMI ID: `ami-0f918f7e67a3323f0`.
2. Fetches the default VPC in the Mumbai region.
3. Creates a custom security group `allow_tls` with the following:
   - ✅ Ingress (incoming) traffic:
     • SSH (port 22) from any IPv4 address
     • HTTPS (port 443) for both IPv4 and IPv6
   - ✅ Egress (outgoing) traffic:
     • Allows **all traffic** for both IPv4 and IPv6

=======================================
🔐 SECURITY GROUP RULES
---------------------------------------
✔ Ingress (Inbound):
- Port 443 (HTTPS): From `data.aws_vpc.default.cidr_block` (IPv4) and all IPv6 (::/0)
- Port 22 (SSH): From `0.0.0.0/0` (IPv4) — open to public (not recommended for production)

✔ Egress (Outbound):
- All traffic allowed for both IPv4 and IPv6 (`0.0.0.0/0`, `::/0`)

=======================================
🚀 HOW TO USE
---------------------------------------
1. Initialize Terraform:
   terraform init

2. Preview what will be created:
   terraform plan

3. Apply the configuration:
   terraform apply

4. To remove all resources:
   terraform destroy

=======================================
⚙️ SYSTEM REQUIREMENTS
---------------------------------------
- Terraform installed
- AWS CLI configured with IAM credentials
- Permissions to manage EC2, VPC, and Security Groups

=======================================
📌 NOTES
---------------------------------------
- The AMI ID is fixed; update manually if it becomes outdated or region-specific.
- SSH access (`0.0.0.0/0`) is open to the world — restrict to your IP for better security.
- EC2 instance is not associated with a key pair; update the resource if SSH login is required.

=======================================
✍️ AUTHOR
---------------------------------------
This is a simple AWS Terraform project for learning and experimentation with EC2 and Security Groups.
