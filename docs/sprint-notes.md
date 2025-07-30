# 📅 Sprint Notes – Cloud Migration Project

This document captures the Agile sprint-wise progress and tasks for the complete cloud-native migration of a legacy 3-tier application using AWS and DevOps best practices.

---

## 🏁 Sprint 1: Planning & Architecture Design
**Duration**: 1 Week

### 🎯 Goals
- Define project objectives and constraints
- Finalize cloud tools and services (AWS, Terraform, Docker, EKS)
- Design 3-tier cloud-native architecture

### ✅ Completed
- High-level architecture with VPC, subnets, RDS, and EKS
- Decided on Terraform for IaC
- Finalized sprint roadmap and task allocations

---

## 🔧 Sprint 2: Infrastructure Layer Setup
**Duration**: 1 Week

### 🎯 Goals
- Implement network layer (VPC, subnets, NAT, IGW)
- Build route tables, gateways, and endpoints
- Set up IAM roles and security groups

### ✅ Completed
- Provisioned VPC (10.0.0.0/16) with 3 subnet tiers:
  - Public for ALB and NAT
  - Private for EKS (App Tier)
  - Isolated for RDS (DB Tier)
- Configured NAT Gateway and Internet Gateway
- Defined security groups and IAM roles
- Created reusable Terraform modules

---

## ⚙️ Sprint 3: Compute, Database & Storage
**Duration**: 1 Week

### 🎯 Goals
- Deploy EKS cluster with node groups
- Configure and launch RDS MySQL (multi-AZ)
- Set up S3 with bucket policies and VPC endpoint

### ✅ Completed
- EKS cluster (v1.29) deployed with managed node group
- MySQL RDS provisioned in isolated subnets
- Static site S3 bucket created and secured
- VPC endpoint added for private S3 access
- Terraform outputs and variables modularized

---

## 🚀 Sprint 4: CI/CD Integration & Final Testing
**Duration**: 1 Week

### 🎯 Goals
- Automate deployment with Jenkins and GitHub
- Finalize Docker images and container structure
- Complete README and documentation for GitHub

### ✅ Completed
- Backend: Flask + MySQL containerized
- Frontend: Static HTML deployed via NGINX
- Docker Compose created for local testing
- CI/CD plan documented (Jenkins + GitHub Actions ready)
- README, architecture diagrams, and markdown docs finalized

---

## 🧠 Retrospective Summary

- The project successfully migrated a monolithic app to a modular, cloud-native stack.
- Terraform infrastructure is scalable, production-ready, and reusable.
- Documentation and version control ensure reproducibility and learning showcase.

