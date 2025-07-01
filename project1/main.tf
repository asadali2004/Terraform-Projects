provider "aws" {
    region = "ap-south-1"
    # profile = "terraform_aws"
    # access_key = "AKIAZAI4HAV4MXJH78451652162H5"
    # secret_key = "ZXCyJuLMi75Gjl0Fgf54nNGuRvT248484sjn0slC1raS4+d1KK"
}
resource "aws_instance" "terraform_server1" {
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-linux"
    }
}