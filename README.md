# AWS Self-Healing Infrastructure for a Microservices Architecture 🚀

## Project Overview 📜
This project aims to design and implement a self-healing infrastructure on AWS specifically tailored for hosting a microservices architecture. Focusing on **automating recovery from failures**, **scaling resources as necessary**, and embracing **continuous deployment practices**, it leverages containerization, managed Kubernetes, and advanced AWS services to ensure robustness and efficiency.

### Key Goals 🎯
- **Automate recovery** from service failures.
- **Scale resources** dynamically based on demand.
- **Continuous deployment** for rapid iteration.

### Technology Stack 🛠️
- **Containerization:** Utilizing Docker to encapsulate microservices.
- **Orchestration:** Managed Kubernetes via Amazon EKS.
- **Databases:** Amazon RDS or Amazon DynamoDB.
- **Front-end Delivery:** Amazon S3 combined with CloudFront.

## Core Components ⚙️
- **Microservices Application:** A suite of simple services (e.g., user, product, order) forming a functional e-commerce system.
- **Containerization:** Docker for creating containerized versions of microservices.
- **Orchestration:** Amazon EKS for managing these containers.
- **Database:** Utilizing Amazon RDS or DynamoDB tailored to specific service needs.
- **Front-end Delivery:** Served efficiently through Amazon S3 and CloudFront.

## Key AWS Services to Use 🌐
- **Amazon EKS:** Container orchestration made simple.
- **Amazon RDS/DynamoDB:** Flexible relational and NoSQL database services.
- **Amazon EC2 Auto Scaling:** Maintain performance with automatic capacity adjustments.
- **AWS Fargate:** Serverless compute for container management.
- **Amazon S3 & CloudFront:** Global static content delivery.
- **AWS Lambda:** Backend functions triggered by AWS services.
- **AWS CloudFormation or AWS CDK:** Infrastructure as Code for efficient provisioning.
- **Amazon CloudWatch & AWS CloudTrail:** Comprehensive monitoring, logging, and auditing.
- **AWS CodePipeline & AWS CodeBuild:** Streamlined continuous integration and delivery.
- **Amazon Route 53:** Dependable DNS management.
- **AWS IAM & AWS Secrets Manager:** Secure access and secret management.
- **Amazon SNS/SQS:** Messaging and service decoupling.
