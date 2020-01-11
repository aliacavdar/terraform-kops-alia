
resource "aws_iam_instance_profile" "bastions-acirrustech-com" {
  name = "bastions.acirrustech.com"
  role = "${aws_iam_role.bastions-acirrustech-com.name}"
}

resource "aws_iam_instance_profile" "masters-acirrustech-com" {
  name = "masters.acirrustech.com"
  role = "${aws_iam_role.masters-acirrustech-com.name}"
}

resource "aws_iam_instance_profile" "nodes-acirrustech-com" {
  name = "nodes.acirrustech.com"
  role = "${aws_iam_role.nodes-acirrustech-com.name}"
}

resource "aws_iam_role" "bastions-acirrustech-com" {
  name               = "bastions.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.acirrustech.com_policy")}"
}

resource "aws_iam_role" "masters-acirrustech-com" {
  name               = "masters.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.acirrustech.com_policy")}"
}

resource "aws_iam_role" "nodes-acirrustech-com" {
  name               = "nodes.acirrustech.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-acirrustech-com" {
  name   = "bastions.acirrustech.com"
  role   = "${aws_iam_role.bastions-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "masters-acirrustech-com" {
  name   = "masters.acirrustech.com"
  role   = "${aws_iam_role.masters-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.acirrustech.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-acirrustech-com" {
  name   = "nodes.acirrustech.com"
  role   = "${aws_iam_role.nodes-acirrustech-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.acirrustech.com_policy")}"
}

resource "aws_internet_gateway" "acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-acirrustech-com-a039e3a23854ef615a76dc5002b5b6fe" {
  key_name   = "kubernetes.acirrustech.com-a0:39:e3:a2:38:54:ef:61:5a:76:dc:50:02:b5:b6:fe"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.acirrustech.com-a039e3a23854ef615a76dc5002b5b6fe_public_key")}"
}

resource "aws_nat_gateway" "eu-west-1a-acirrustech-com" {
  allocation_id = "${aws_eip.eu-west-1a-acirrustech-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1a.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}


