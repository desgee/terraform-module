# production/services/webserver-cluster/main.tf

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name  = "webservers-production"
  environment   = "production"
  instance_type = "t2.medium"
  min_size      = 4
  max_size      = 10
}

output "alb_dns_name" {
  value = module.webserver_cluster.alb_dns_name
}