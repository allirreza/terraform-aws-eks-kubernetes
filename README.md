# Create your first Kubernetes cluster using AWS EKS and Terraform (Fully automated)

This repo is created to provision a EKS cluster to deploy a stateless service and a statefull application. I used Kubernetes provider in terraform to configure everything. So, there is no manual configurations.


## How to run

### Prepare variables 
First you need to create AWS credentials. As soon as you have your access_key and secret_key, you can fill them in the terraform.tfvars. There other vaiables like AWS region and the name of the environment which you can fill otherwise you can leave and run.

### Initialize Terraform 
```shell
$ terraform init
```

### Plan Terraform 
```shell
$ terraform plan
```

### Apply Terraform 
```shell
$ terraform apply -auto-approve
```