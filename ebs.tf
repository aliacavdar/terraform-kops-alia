
resource "aws_ebs_volume" "a-etcd-events-acirrustech-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "a.etcd-events.acirrustech.com"
    "k8s.io/etcd/events"                    = "a/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-acirrustech-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "a.etcd-main.acirrustech.com"
    "k8s.io/etcd/main"                      = "a/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-acirrustech-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "b.etcd-events.acirrustech.com"
    "k8s.io/etcd/events"                    = "b/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-acirrustech-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "b.etcd-main.acirrustech.com"
    "k8s.io/etcd/main"                      = "b/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-acirrustech-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "c.etcd-events.acirrustech.com"
    "k8s.io/etcd/events"                    = "c/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-acirrustech-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "acirrustech.com"
    Name                                    = "c.etcd-main.acirrustech.com"
    "k8s.io/etcd/main"                      = "c/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/acirrustech.com" = "owned"
  }
}
