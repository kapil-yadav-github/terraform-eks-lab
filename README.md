# Enterprise EKS Terraform Stack

This repository provisions a production-style Amazon EKS environment with a reusable VPC module and an EKS module.

## Structure

- `modules/networking` - AWS VPC and subnet configuration
- `modules/eks` - EKS control plane and managed node groups
- `environments/dev` - development defaults
- `environments/prod` - production defaults

## Prerequisites

- Terraform >= 1.6.0
- AWS CLI configured with credentials and a default region
- Permission to create VPC, EKS, IAM, and related resources

## Usage

1. Change into the environment directory you want to deploy:
   - `cd environments/dev`
2. Copy or update the `terraform.tfvars` file with your environment values.
3. Initialize Terraform:
   - `terraform init`
4. Review the plan:
   - `terraform plan`
5. Deploy the stack:
   - `terraform apply`

## Remote State

The root Terraform configuration includes a placeholder S3 backend block. Update the backend configuration to point to your enterprise state bucket before running deployments in shared environments.

## Tagging

All resources are tagged with operational metadata such as `Environment`, `Project`, `Owner`, and `CostCenter` using the shared `default_tags` in the root provider configuration.
