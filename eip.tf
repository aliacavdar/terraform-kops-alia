resource "aws_eip" "eu-west-1a-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1a.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1b.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-acirrustech-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "eu-west-1c.acirrustech.com"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

}
