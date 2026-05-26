# Terraform Module Repository

This repository contains Terraform code for deploying a highly available web server cluster across multiple AWS environments.

## Repository structure

- `modules/services/webserver-cluster/`
  - Reusable module for a web server cluster
  - Deploys an AWS Application Load Balancer, Auto Scaling Group, launch template, and security groups
  - Supports VPC/subnet injection, environment tagging, and health check configuration

- `dev/services/webserver-cluster/`
  - Development environment root configuration
  - Uses the shared `webserver-cluster` module

- `production/services/webserver-cluster/`
  - Production environment root configuration
  - Uses the shared `webserver-cluster` module

- `live/dev/services/webserver-cluster/`
  - Live deployment configuration for the `dev` environment

- `live/production/services/webserver-cluster/`
  - Live deployment configuration for the `production` environment

## Goals

- Deploy a fault-tolerant web server cluster
- Use an ALB for public HTTP traffic
- Use an Auto Scaling Group for instance scaling and replacement
- Support multiple environments with shared module logic

## How to use

1. Change into the environment directory you want to deploy.

```powershell
cd c:\Users\user\Desktop\Projects\terraform_module\dev\services\webserver-cluster
```

2. Initialize Terraform.

```powershell
terraform init
```

3. Review the planned changes.

```powershell
terraform plan
```

4. Apply the deployment.

```powershell
terraform apply
```

## Notes

- The module defaults to the AWS default VPC and subnets when no `vpc_id` or `subnet_ids` are provided.
- You can customize instance size, scaling limits, and environment metadata in the root module configuration.
- The production and dev root configs currently set distinctive `cluster_name`, `environment`, `instance_type`, and scaling values.

## Recommended next steps

- Add remote state backend configuration for each environment
- Add provider version constraints and required Terraform providers
- Use separate workspaces or directories for environment isolation
- Secure secrets and avoid committing sensitive data
