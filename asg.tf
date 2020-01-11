
resource "aws_autoscaling_attachment" "bastions-acirrustech-com" {
  elb                    = "${aws_elb.bastion-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_group" "bastions-acirrustech-com" {
  name                 = "bastions.acirrustech.com"
  launch_configuration = "${aws_launch_configuration.bastions-acirrustech-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-acirrustech-com.id}", "${aws_subnet.utility-eu-west-1b-acirrustech-com.id}", "${aws_subnet.utility-eu-west-1c-acirrustech-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-acirrustech-com" {
  name                 = "master-eu-west-1a.masters.acirrustech.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-acirrustech-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-acirrustech-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-acirrustech-com" {
  name                 = "master-eu-west-1b.masters.acirrustech.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-acirrustech-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-acirrustech-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-acirrustech-com" {
  name                 = "master-eu-west-1c.masters.acirrustech.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-acirrustech-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-acirrustech-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-acirrustech-com" {
  name                 = "nodes.acirrustech.com"
  launch_configuration = "${aws_launch_configuration.nodes-acirrustech-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-acirrustech-com.id}", "${aws_subnet.eu-west-1b-acirrustech-com.id}", "${aws_subnet.eu-west-1c-acirrustech-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.acirrustech.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

