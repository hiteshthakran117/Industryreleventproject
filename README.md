# Industryreleventproject
Automated AWS infrastructure with Terraform, Ansible, and Bash, deploying RHEL &amp; Ubuntu instances in a single VPC. Includes dynamic inventory setup, HTTPD web server configuration, and menu-driven scripts for monitoring, scaling, and stopping services — reflecting real-world DevOps workflows.

Multi-OS AWS Infrastructure Automation with Terraform, Ansible & Bash
Overview

This project demonstrates a complete, automated deployment of a multi-OS AWS infrastructure using Terraform, Ansible, and Bash scripting. The architecture is designed to simulate a real-world environment where multiple operating systems coexist and work together in a single virtual private cloud (VPC).

The infrastructure includes multiple RHEL and Ubuntu instances serving different roles such as frontend, backend, and database. All provisioning is performed through Terraform modules, configuration management is handled by Ansible with a dynamic inventory, and orchestration tasks are automated using Bash scripts.

Architecture

The project provisions a single AWS VPC containing custom public and private subnets. Within this network:

Multiple RHEL and Ubuntu instances are launched.

Each instance is assigned a specific role: frontend, backend, or database.

Custom route tables and security groups are created to control traffic flow.

All instances are connected within the same VPC and communicate securely through configured networking rules.

Key Features

Infrastructure as Code (IaC): Uses Terraform modules to provision AWS infrastructure including VPC, subnets, route tables, security groups, and EC2 instances.

Multi-OS Environment: Deploys both RHEL and Ubuntu instances for a mixed operating system setup.

Automated Key Management: Bash script automatically collects private key files from all instances and transfers them to the frontend instance for secure access.

Dynamic Inventory Configuration: Bash script configures Ansible’s dynamic inventory on the controller instance for automated target node management.

Web Server Deployment: Ansible is used to install and configure HTTPD web servers on all target nodes.

Menu-Driven Infrastructure Management: A Bash script provides interactive options to check instance statuses, scale infrastructure, stop services, and perform other management tasks.

Workflow

Provisioning: Terraform modules create the VPC, subnets, route tables, security groups, and EC2 instances.

Key Distribution: A Bash script collects instance private keys and stores them in the frontend instance.

Inventory Setup: Another Bash script configures Ansible’s dynamic inventory on the controller node.

Configuration Management: Ansible playbooks install and configure HTTPD web servers across all target nodes.

Infrastructure Management: A menu-driven Bash script allows easy monitoring, scaling, and stopping of infrastructure components.

Technologies Used

AWS Services: VPC, EC2, Security Groups, Route Tables

Terraform: Infrastructure provisioning and module-based automation

Ansible: Configuration management and web server setup

Bash Scripting: Orchestration, automation, and menu-driven control

Operating Systems: RHEL and Ubuntu

Author

Hitesh Thakran
DevOps Engineer (AWS | Terraform | Ansible | Linux | Bash)
