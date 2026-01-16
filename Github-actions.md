# Two-Tier Hospital Management Application – DevOps Deployment

 ** Two-Tier application deployment** for a Hospital Management System built using **Java/JEE** and **MySQL**, containerized with **Docker**, fronted by **Nginx**, and deployed on **AWS EC2** with **RDS**.  
The project includes a **complete CI/CD pipeline using GitHub Actions** following real industry practices.

---

## Project Overview

This project demonstrates how DevOps engineers deploy and manage a **two-tier web application** in a real-world environment.

- **Tier 1 (Application Layer)**: Java/JEE application running on Apache Tomcat
- **Tier 2 (Database Layer)**: MySQL hosted on Amazon RDS
- **Reverse Proxy**: Nginx
- **CI/CD**: GitHub Actions
- **Cloud**: AWS EC2 + RDS
- **Containerization**: Docker & Docker Compose

---

## Architecture

### High-Level Flow
1. Developer pushes code to GitHub
2. GitHub Actions CI pipeline:
   - Builds WAR using Maven
   - Builds Docker image
   - Scans image using Trivy
   - Pushes image to Docker Hub
3. GitHub Actions CD pipeline:
   - Triggers after successful CI
   - SSHs into EC2
   - Deploys application using Docker Compose
4. User accesses application via Nginx
5. Application communicates securely with MySQL RDS

---

## Tech Stack

### Application
- Java / JEE
- Apache Tomcat 9
- Maven

### DevOps & Cloud
- Docker (multi-stage build)
- Docker Compose
- Nginx (Reverse Proxy)
- GitHub Actions (CI/CD)
- AWS EC2
- AWS RDS (MySQL)
- Trivy (Image vulnerability scanning)

---
