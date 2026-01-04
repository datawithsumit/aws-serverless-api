# aws-serverless-api
# Serverless API with Infrastructure as Code (Terraform)

## Overview
This project is a Cloud-Native REST API that tracks visitor counts. It demonstrates **Infrastructure as Code (IaC)** by using Terraform to provision the database and Python (Flask) for the backend logic.
![Bitcoin Price Trend](visitor.png|graph.png)

## Architecture
* **Language:** Python (Flask)
* **Database:** AWS DynamoDB (NoSQL)
* **Infrastructure:** Terraform (HCL)
* **Monitoring:** AWS CloudWatch (Custom Metrics) + SNS Alerts

## Key Features
* **Automated Provisioning:** The database is created via `main.tf`, removing manual console work.
* **Live Monitoring:** Every API hit sends a custom metric to CloudWatch.
* **High Availability:** Deployed on AWS EC2 (Ubuntu).

## How to Run
1.  Install Terraform & Python.
2.  Run `terraform apply` to build the infrastructure.
3.  Run `python app.py` to start the server.
