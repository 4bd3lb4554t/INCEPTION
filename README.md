
---

# 🐳 INCEPTION - A Docker-based Web Infrastructure

Welcome to **INCEPTION** – a 42 School project that introduces you to the world of containerized services using **Docker** and **Docker Compose**. The goal of this project is to set up a secure, scalable, and modular web infrastructure from scratch using multiple Docker containers.

---

## 📦 Overview

This project sets up a WordPress-based web service running on an Nginx server with a MariaDB database in a secure, containerized environment. You will also configure domain names, SSL encryption, and a persistent volume system – all orchestrated through Docker Compose.

---
Got it! I see what you mean—it's better to present the project structure in a more readable way that doesn't overwhelm the user with too much information all at once. Here’s a cleaner breakdown of the **project structure** in the `README.md` that’s easier to follow.

---

## 📂 Project Structure

The **INCEPTION** project is organized as follows:

```
inception/
├── srcs/                    # Main source directory containing configuration files
│   ├── docker-compose.yml    # 📦 Main Docker Compose configuration file to orchestrate services
│   ├── .env                 # 🔐 Environment variables for database credentials, domain, etc.
│   ├── requirements/         # 📁 Directory containing individual service setups
│   │   ├── mariadb/          # 🛢️ MariaDB setup and configuration
│   │   │   ├── Dockerfile    # Dockerfile to build the MariaDB container
│   │   │   └── conf.sql      # SQL script to initialize the MariaDB database
│   │   ├── nginx/            # 🌐 Nginx setup and configuration
│   │   │   ├── Dockerfile    # Dockerfile to build the Nginx container
│   │   │   └── default.conf  # Nginx default server configuration (including SSL)
│   │   └── wordpress/        # 📝 WordPress setup and configuration
│   │       ├── Dockerfile    # Dockerfile to build the WordPress container
│   │       └── setup.sh      # Shell script for setting up WordPress (e.g., database connection)
│   └── tools/                # 🛠️ Additional tools, like SSL certificates or helper scripts
│       └── mkcert.sh         # Script to generate SSL certificates (optional)
└── README.md                 # 📘 This file (project documentation)
```

---

### 🔍 Breakdown of Key Files and Folders

- **`docker-compose.yml`**  
  The main orchestration file that ties together the services (MariaDB, WordPress, Nginx) and manages container networking and persistence.

- **`.env`**  
  Contains sensitive data like database credentials, and environment variables such as domain names or paths that are used across services.

- **`requirements/`**  
  Contains the individual Dockerfiles and configuration files for each service:
  - **`mariadb/`** – Configures and sets up the MariaDB database.
  - **`nginx/`** – Configures Nginx as a reverse proxy and web server.
  - **`wordpress/`** – Configures the WordPress service to connect with MariaDB and serve the content.

- **`tools/`**  
  Optional helper scripts for tasks like generating SSL certificates with `mkcert.sh`.

---
---

## 🚀 Services Explained

### 🗃️ 1. MariaDB (Database)
- Acts as the **backend database** for WordPress.
- Initializes with custom credentials (defined in `.env`).
- Persists data using **named Docker volumes** to prevent data loss on container restart.

📁 Folder: `requirements/mariadb`

🔧 Includes:
- Initialization script to create a DB and user.
- Secure configuration options.

---

### 📝 2. WordPress (CMS)
- A dynamic content management system served via PHP.
- Communicates with the MariaDB database to store/retrieve content.
- Configured via CLI on first boot using a custom script.

📁 Folder: `requirements/wordpress`

⚙️ Includes:
- Automatic installation of WordPress using `wp-cli`.
- Connection to the database using environment variables.

---

### 🌐 3. Nginx (Web Server)
- Acts as a **reverse proxy** to serve WordPress over HTTPS.
- Configured to handle SSL (with self-signed certificates).
- Listens on port 443 for secure connections.

📁 Folder: `requirements/nginx`

🔒 Features:
- SSL certificate generation with OpenSSL.
- Secure redirection and static file delivery.

---

## 📁 Volumes & Persistence

All data is stored in Docker **volumes**, ensuring persistence across container restarts. For example:
- WordPress uploads
- MariaDB data

These volumes are defined in `docker-compose.yml`.

---

## 🛠️ Makefile Commands

This repo comes with a `Makefile` to simplify managing your containers.

| Command           | Description                       |
|------------------|-----------------------------------|
| `make`           | Build and start all containers    |
| `make down`      | Stop and remove containers        |
| `make fclean`    | Full cleanup (containers, volumes)|
| `make rebuild`   | Rebuild all containers from scratch|

---

## 🔐 Security

- All services run with **non-root** users.
- Passwords and secrets managed via `.env` file.
- SSL encryption enabled via self-signed certs.
- MariaDB access is restricted and protected.

---

## 🌍 Domain and Networking

- Services are hosted on a virtual machine.
- You configure a **custom domain** (e.g., `yourname.42.fr`).
- Nginx handles domain routing and HTTPS.

---

## ✅ Project Requirements (42 School)

- Use Docker containers only (no host installs).
- No `:latest` tags; pin all image versions.
- Use Docker volumes for persistence.
- Host all services on the same network.
- Services must restart automatically.

---

## 📸 Screenshot (Optional)

> _You can add a screenshot here of the running WordPress site._

---

## 🧠 Learnings

Through this project, you’ll gain experience with:
- Dockerfile creation
- Docker Compose orchestration
- SSL certificate generation
- Setting up a production-like WordPress environment
- Secure and persistent infrastructure design

---

## 🏁 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/4bd3lb4554t/INCEPTION.git
   cd INCEPTION
   ```

2. Configure your `.env` file:
   ```env

USER_WP=login
PASS_WP=0000
DB_WP=WP
HOST_WP=mariadb:3306

MYSQL_ROOT=root
MYSQL_DB=WP
MYSQL_USER=login
MYSQL_PASS=0000

HOST_REDIS=redis
PORT_REDIS=6379
   ```

3. Build and run:
   ```bash
   make
   ```

4. Access your site at `https://login.42.fr`

---

## 👨‍💻 Author

- GitHub: [@4bd3lb4554t](https://github.com/4bd3lb4554t)
- Project by 42 School

---

## 📜 License

This project is licensed under the 42 School intra guidelines. Use responsibly and for educational purposes.

---
