resource "aws_nat_gateway" "eu-west-1b-acirrustech-com" {
  allocation_id = "${aws_eip.eu-west-1b-acirrustech-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1b.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-acirrustech-com" {
  allocation_id = "${aws_eip.eu-west-1c-acirrustech-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1c.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}
