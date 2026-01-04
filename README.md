# AWS Infrastructure via Terraform: IDURAR ERP/CRM Foundation

This repository contains the Infrastructure as Code (IaC) configuration used to provision the underlying AWS resources for the IDURAR ERP/CRM project. By using **Terraform**, this project ensures that the server environment is reproducible, documented, and version-controlled.



## 🏗 Infrastructure Overview

The Terraform configuration provisions a complete environment on AWS, specifically tailored for a Dockerized MERN stack deployment.

### Resources Managed:
* **EC2 Instance:** An Ubuntu-based virtual server to host the Docker engine and application containers.
* **Security Groups:** Granular firewall rules to secure the instance:
    * **Port 22 (SSH):** Restricted access for remote configuration via Ansible.
    * **Port 80 (HTTP):** Public access for the IDURAR Frontend.
    * **Port 8080/5000:** (Optional) Backend API access for testing.
* **Key Pairs:** Integration with local `.pem` keys for secure, passwordless authentication.

---

## 🛠 Tech Stack

- **Provisioning Tool:** Terraform
- **Cloud Provider:** AWS (Amazon Web Services)
- **Language:** HCL (HashiCorp Configuration Language)
- **Operating System:** Ubuntu 24.04 LTS

---

## 🚀 Getting Started

### Prerequisites
- AWS CLI configured with appropriate IAM permissions.
- Terraform installed locally.
- An SSH Key Pair generated (e.g., `terraform.pem`).

### Deployment Steps

1. **Initialize Terraform:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   
Builds the hardware on AWS. Type yes when prompted.
