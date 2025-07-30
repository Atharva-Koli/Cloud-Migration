# 🚀 Deployment Guide

## 🔧 Prerequisites

- AWS CLI + configured profile
- Terraform v1.5+
- Git, kubectl, Docker (optional)

## ⬇️ Setup

```bash
git clone https://github.com/yourname/cloud-migration.git
cd terraform
cp terraform.tfvars.example terraform.tfvars  # then fill in values
terraform init
terraform apply -var-file="terraform.tfvars"
