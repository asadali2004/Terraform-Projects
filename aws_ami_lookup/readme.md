Terraform Project: Launch Ubuntu EC2 Instance with Latest AMI

=======================================
📦 PROJECT OVERVIEW
---------------------------------------
This Terraform project provisions an AWS EC2 instance in the Mumbai region (`ap-south-1`) using the **latest official Ubuntu 22.04 LTS AMI** dynamically fetched from AWS. It defines required providers, sets up the AWS provider, and deploys a `t3.micro` EC2 instance tagged as "HelloWorld".

=======================================
🔧 WHAT IT DOES
---------------------------------------
1. Specifies required Terraform provider: `hashicorp/aws` (version 5.0 or above).
2. Configures the AWS provider to use the Mumbai region (`ap-south-1`).
3. Dynamically fetches the **most recent Ubuntu 22.04 LTS AMI** from Canonical.
4. Launches an EC2 instance with:
   - Instance type: `t3.micro`
   - OS: Ubuntu 22.04 LTS
   - Name tag: `HelloWorld`

=======================================
📁 MAIN COMPONENTS
---------------------------------------
✔ `terraform` block:
- Ensures the correct AWS provider is used and locked to version 5.x.

✔ `provider` block:
- Configures AWS with region `ap-south-1`.

✔ `data "aws_ami" "ubuntu"`:
- Filters and retrieves the latest official Ubuntu 22.04 AMI from Canonical.

✔ `resource "aws_instance" "web"`:
- Creates an EC2 instance using the fetched AMI and t3.micro instance type.

=======================================
🚀 HOW TO USE
---------------------------------------
1. Initialize the project:
   terraform init

2. Preview the planned resources:
   terraform plan

3. Apply the configuration:
   terraform apply

4. To delete the resources:
   terraform destroy

=======================================
⚠️ IMPORTANT NOTES
---------------------------------------
- The AMI is fetched dynamically; no need to hardcode.
- No security group is specified — AWS will attach the default SG (all outbound, no inbound).
- No key pair is defined — SSH access will not be possible unless manually added.
- `t3.micro` is cost-effective but not part of the free tier (t2.micro is).

=======================================
✅ REQUIREMENTS
---------------------------------------
- Terraform installed (v1.0+ recommended)
- AWS CLI configured with access/secret keys
- EC2 and AMI listing permissions in your IAM policy

=======================================
✍️ AUTHOR
---------------------------------------
This is a simple Terraform setup for launching a basic EC2 instance using the latest Ubuntu image, ideal for beginners learning infrastructure-as-code (IaC) on AWS.
