resource "aws_vpc" "acirrustech-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "acirrustech-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "acirrustech-com" {
  vpc_id          = "${aws_vpc.acirrustech-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.acirrustech-com.id}"
}
