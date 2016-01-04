resource "aws_ecs_service" "terraform-ecs-service-partnerportal" {
  name = "terraform-ecs-service-partnerportal"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.partnerportal.arn}"
  desired_count = 1
  /*iam_role = "${aws_iam_role.ecsServiceRole.arn}"*/
  depends_on = ["aws_iam_role_policy.ecsServicePolicy"]

/*  load_balancer {
    elb_name = "${aws_elb.aevi-app.id}"
    container_name = "nginx-proxy"
    container_port = 80
  }*/
}
