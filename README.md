# Terraform Kind Cluster

This project provisions a local Kubernetes cluster with Kind using Terraform. It creates a cluster with a control-plane node and worker nodes, then exposes the cluster status through Terraform outputs.

## Project structure

- main.tf - defines the Kind cluster resource and its configuration
- variables.tf - contains input variables such as the cluster name, API version, and node image
- outputs.tf - exposes useful values after the cluster is created, including the cluster readiness status
- terraform.tf - declares the required providers and configures the Kubernetes provider
- README.md - project documentation

## Prerequisites

Before running this project, make sure you have:

- Terraform installed
- Docker installed and running
- Kind installed
- kubectl installed

## How to run

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the planned changes:
   ```bash
   terraform plan
   ```

3. Apply the configuration to create the cluster:
   ```bash
   terraform apply
   ```

4. After the apply completes, inspect the outputs:
   ```bash
   terraform output
   ```

5. To destroy the cluster when you are done:
   ```bash
   terraform destroy
   ```

## Notes

The configuration uses the Kind provider to create a local Kubernetes cluster and the Kubernetes provider to interact with it via your kubeconfig.