
resource "aws_launch_configuration" "bastions-acirrustech-com" {
  name_prefix                 = "bastions.acirrustech.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-acirrustech-com.id}"
  security_groups             = ["${aws_security_group.bastion-acirrustech-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-acirrustech-com" {
  name_prefix                 = "master-eu-west-1a.masters.acirrustech.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-acirrustech-com.id}"
  security_groups             = ["${aws_security_group.masters-acirrustech-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.acirrustech.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-acirrustech-com" {
  name_prefix                 = "master-eu-west-1b.masters.acirrustech.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-acirrustech-com.id}"
  security_groups             = ["${aws_security_group.masters-acirrustech-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.acirrustech.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-acirrustech-com" {
  name_prefix                 = "master-eu-west-1c.masters.acirrustech.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-acirrustech-com.id}"
  security_groups             = ["${aws_security_group.masters-acirrustech-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.acirrustech.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-acirrustech-com" {
  name_prefix                 = "nodes.acirrustech.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-acirrustech-com.id}"
  security_groups             = ["${aws_security_group.nodes-acirrustech-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.acirrustech.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
