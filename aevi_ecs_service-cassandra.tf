resource "aws_ecs_service" "terraform-ecs-service-cassandra" {
  name = "terraform-ecs-service-cassandra"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.cassandra.arn}"
  desired_count = 1
/*  iam_role = "${aws_iam_role.ecsServiceRole.arn}"
  depends_on = ["aws_iam_role_policy.ecsServicePolicy"]*/
}