module "vpc" {
  source = "../../"

  network_interface_attachments = [{
    instance_id          = local.effective_instance_id
    network_interface_id = local.effective_network_interface_id
    device_index         = var.device_index
  }]
}

resource "aws_instance" "demo" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t3.micro"
}

resource "aws_network_interface" "demo" {
  count = var.network_interface_id != null ? 0 : 1

  subnet_id = local.effective_subnet_id
}
