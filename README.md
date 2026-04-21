![CI](https://github.com/bzzs2006-create/status-app/actions/workflows/ci.yml/badge.svg)

# Status API

A simple Node.js API deployed in a containerized environment with reverse proxy, HTTPS, and CI/CD pipeline.

---

## 🚀 Features

* Node.js REST API
* Containerized with Docker
* Multi-container setup using Docker Compose
* Reverse proxy with NGINX
* HTTPS enabled (self-signed certificate)
* CI/CD pipeline with GitHub Actions
* Docker image published to Docker Hub

---

## 🧱 Architecture

```
Client → HTTPS → NGINX → Node.js API
```

* NGINX handles incoming traffic and SSL termination
* Node.js app runs in a separate container
* Services communicate via Docker network

---

## 📦 Project Structure

```
status-app/
├── app/                # Node.js application
├── nginx/              # NGINX config + certificates
├── Dockerfile
├── docker-compose.yml
└── .github/workflows/  # CI/CD pipeline
```

---

## ▶️ Run Locally (without Docker)

```bash
cd app
npm install
node index.js
```

---

## 🐳 Run with Docker Compose

```bash
docker compose up --build
```

App available at:

👉 https://localhost/api/status

⚠️ Browser will show a warning due to self-signed certificate

---

## 🔐 HTTPS

* Implemented using self-signed certificates
* NGINX handles SSL termination
* HTTP traffic is redirected to HTTPS

---

## ⚙️ CI/CD

Using GitHub Actions:

* Triggered on push to `main`
* Builds Docker image
* Pushes image to Docker Hub

---

## 📡 API Endpoints

### GET /api/status

Returns application status:

```json
{
  "status": "ok",
  "timestamp": "2026-01-01T12:00:00.000Z"
}
```

---

## 🩺 Health Check

### GET /health

Returns:

```
OK
```

---

## 🧠 What I Learned

* Containerization with Docker
* Multi-service architecture with Docker Compose
* Reverse proxy configuration with NGINX
* HTTPS setup and certificate handling
* CI/CD automation with GitHub Actions

---

## 📌 Future Improvements

* Kubernetes deployment
* Load balancing (multiple app instances)
* Proper TLS with Let's Encrypt
* Monitoring and logging

---
