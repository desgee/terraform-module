output "asg_name" {
  value       = module.webserver_cluster.asg_name
  description = "The name of the Auto Scaling group"
}