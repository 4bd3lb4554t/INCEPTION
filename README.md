# 🧠 INCEPTION - 42 School Project

## 🚀 Project Overview

The **Inception** project is part of the 42 School curriculum. Its goal is to introduce containerization using **Docker** and **Docker Compose**. You are required to set up a complete WordPress website with a Nginx reverse proxy and a MariaDB database, all running inside Docker containers.

---

## 📦 UCAN Overview

**Use Case:**  
Deploy a secure, modular, and containerized WordPress application with Docker.

**Action:**  
Build and orchestrate multiple Docker containers using `docker-compose`, configure Nginx, generate SSL certificates with OpenSSL, and ensure all services run smoothly with persistent volumes.

**Need:**  
Learn how to containerize services, manage dependencies, and enforce isolation in a reproducible environment as part of DevOps fundamentals.

---

## 🛠️ Technologies Used

- **Docker**
- **Docker Compose**
- **Nginx**
- **MariaDB**
- **WordPress**

---

## 🧱 Project Structure

inception/ ├── srcs/ │ ├── docker-compose.yml 📦 Main Docker Compose file │ ├── .env 🔐 Environment variables (git-ignored) │ ├── requirements/ 📁 Main services folder │ │ ├── mariadb/ 🛢️ MariaDB container setup │ │ │ ├── Dockerfile 🔧 Custom MariaDB image │ │ │ └── conf.sql 🗄️ (Optional) SQL init script │ │ ├── nginx/ 🌐 Nginx container setup │ │ │ ├── Dockerfile 🔧 Custom Nginx image │ │ │ └── default.conf ⚙️ Nginx configuration │ │ └── wordpress/ 📝 WordPress container setup │ │ ├── Dockerfile 🔧 Custom WordPress image │ │ └── setup.sh ⚙️ WordPress setup script │ └── tools/ 🛠️ Helper scripts (optional) │ └── mkcert.sh 🔐 SSL certificate generation │ └── README.md 📘 Project documentation (you’re here!)

