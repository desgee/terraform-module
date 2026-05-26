variable "cluster_name" {
  description = "The name to use for all cluster resources"
  type        = string
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type for the cluster"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum number of EC2 instances in the ASG"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of EC2 instances in the ASG"
  type        = number
  default     = 4
}

variable "server_port" {
  description = "Port the server uses for HTTP"
  type        = number
  default     = 8080
}

variable "vpc_id" {
  description = "The VPC ID to deploy into. When not set, the default VPC is used."
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "Subnet IDs for the load balancer and ASG. When not set, the default VPC subnets are used."
  type        = list(string)
  default     = null
}

variable "health_check_path" {
  description = "Path used by the ALB health check"
  type        = string
  default     = "/"
}
