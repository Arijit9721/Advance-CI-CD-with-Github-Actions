# Advance Java CI/CD Pipeline with GitHub Actions & EKS

  

This project demonstrates a full CI/CD pipeline for a Java application using Maven, GitHub Actions, Docker, and deployment to AWS EKS. It includes security scans (Gitleaks and Trivy), test execution, artifact packaging, Docker image publishing, and automated deployment of the Ansible code to a Kubernetes cluster.

  
  

## 📦 Features

  

🔹 Secret scanning with [Gitleaks](https://github.com/gitleaks/gitleaks)

🔹 Vulnerability scanning with [Trivy](https://github.com/aquasecurity/trivy)

🔹 Maven tests and build with JDK 17

🔹 Docker image build and push to Docker Hub

🔹 Auto-tagging with Git SHA and `latest`

🔹 Deployment to AWS EKS via `kubectl apply`

  

# 🚧 Prerequisites

  

### 🧰 Tools & Services

  

| Requirement | Details |

`AWS account` : With EKS cluster setup in `ap-south-1` region 

`Docker Hub account` : To push Docker images 

`Kubernetes cluster` : EKS with proper IAM and context setup 

`Maven project files` : `pom.xml`, `src/`, and `mvnw` present in the repo 

  

---

  

### 🔐 Required GitHub Secrets

  

Set these in your repo’s **Settings > Secrets and variables > Actions**:

  

| Secret Name | Purpose |

`DOCKER_USERNAME` : Your Docker Hub username 

`DOCKER_PASSWORD`: Your Docker Hub password or access token 

`AWS_ACCESS_KEY_ID` :  AWS IAM user's access key 

`AWS_SECRET_ACCESS_KEY` : AWS IAM user's secret access key 

`EKS_KUBECONFIG` : Kubeconfig content of your EKS cluster 

  
  

## ⚙️ Workflow Overview

  

| Job | Description |



`security_checks` : Runs Gitleaks and Trivy scans on source and config files 

`build_and_maven_tests` : Runs unit tests using Maven and builds the `.jar` 

`docker_build_and_publish` : Downloads `.jar` artifact, builds Docker image, and pushes to Docker Hub

`deploy_to_eks` : Deploys the `ds.yml` file to the EKS cluster  
