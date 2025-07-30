# 🧱 Infrastructure Architecture Notes

## 🌐 Network

- VPC: 10.0.0.0/16
- Subnets:
  - Public (for ALB/NAT)
  - Private-App (for EKS worker nodes)
  - DB (for RDS – multi-AZ)
- Route tables: Custom public/private
- NAT Gateway & Internet Gateway
- S3 VPC Endpoint

## 🧠 Compute

- Amazon EKS (1.29), managed node groups
- Dockerized microservices deployed via Helm/kubectl
- Horizontal scaling enabled

## 💾 Storage

- Amazon RDS (MySQL 8.0)
- S3 for logs/static site hosting
