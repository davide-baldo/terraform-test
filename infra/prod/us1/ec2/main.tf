provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}

resource "aws_instance" "web_app" {
  ami                         = data.aws_ami.amazon_linux_2.id
  instance_type               = "t3.xlarge"
  associate_public_ip_address = false
}
