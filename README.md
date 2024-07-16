# AWS EKS Infrastructure and Kubernetes Application Deployment

This project sets up an AWS EKS cluster using Terraform, focusing on foundational networking components such as VPC setup with subnets, NAT Gateway, and route tables for private and public access. IAM roles and policies are configured to manage cluster administration and worker nodes securely. Kubernetes applications, managed via Helm, include essential components for metrics monitoring, ingress handling, and support for certificate management. 
Additionally, the setup incorporates Horizontal Pod Autoscaler (HPA) and Cluster Autoscaler to optimize resource usage and ensure scalable operation of Kubernetes applications within AWS EKS.
With Cert Manager project automates the management of TLS certificates in the Kubernetes cluster. It handles certificate issuance, renewal, and provisioning, ensuring that your applications can securely communicate over HTTPS without manual intervention. 
Configured EKS Admin Role is an IAM role designed to provide administrative privileges within an Amazon EKS (Elastic Kubernetes Service) cluster. It allows users or services assumed with this role to perform administrative actions such as managing cluster resources, deploying applications, configuring networking, and interacting with other AWS services required by the cluster.

List of the created resources:

- VPC
- Internet Gateway
- NAT Gateway
- Private Route Table
- Public Route Table
- Private Subnets (Zone 1 and Zone 2)
- Public Subnets (Zone 1 and Zone 2)
- EKS Cluster Role
- EKS Nodes Role
- EKS Admin Role
- EKS Cluster
- EKS Node Group
- EKS Add-on (Pod Identity)
- Metrics Server (Helm)
- External Nginx Ingress Controller (Helm)
- Cert Manager (Helm)
- Cluster Role Binding
- Cluster Issuer
- Namespace
- Deployment
- Service
- Ingress
- IAM User
- IAM Policies (EKS Admin, EKS Assume Admin)
- IAM Policy Attachments