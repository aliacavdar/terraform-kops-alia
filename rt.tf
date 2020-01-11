resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.acirrustech-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.acirrustech-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-acirrustech-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-acirrustech-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-acirrustech-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-acirrustech-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-acirrustech-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-acirrustech-com.id}"
}

resource "aws_route53_record" "api-acirrustech-com" {
  name = "api.acirrustech.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-acirrustech-com.dns_name}"
    zone_id                = "${aws_elb.api-acirrustech-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z32OHGRMBVZ9LR"
}

resource "aws_route53_record" "bastion-acirrustech-com" {
  name = "bastion.acirrustech.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-acirrustech-com.dns_name}"
    zone_id                = "${aws_elb.bastion-acirrustech-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z32OHGRMBVZ9LR"
}

resource "aws_route_table" "acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/kops/role"               = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "private-eu-west-1a.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/kops/role"               = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "private-eu-west-1b.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/kops/role"               = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-acirrustech-com" {
  vpc_id = "${aws_vpc.acirrustech-com.id}"

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "private-eu-west-1c.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
    "kubernetes.io/kops/role"               = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-acirrustech-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-acirrustech-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-acirrustech-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-acirrustech-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-acirrustech-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-acirrustech-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-acirrustech-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-acirrustech-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-acirrustech-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-acirrustech-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-acirrustech-com.id}"
  route_table_id = "${aws_route_table.acirrustech-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-acirrustech-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-acirrustech-com.id}"
  route_table_id = "${aws_route_table.acirrustech-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-acirrustech-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"
  route_table_id = "${aws_route_table.acirrustech-com.id}"
}

