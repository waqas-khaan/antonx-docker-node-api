# AntonX Docker Node.js API (SabziCart)

A lightweight containerized Node.js & Express REST API for SabziCart vegetable market prices.

## Features

- **Node.js & Express API** with modular endpoints
- **Dockerized** using official lightweight `node:22-alpine`
- **Optimized Docker Layer Caching** for fast rebuilds
- **Health Check & Pricing Endpoints**

---

## API Endpoints

| Method | Endpoint | Description | Sample Response |
|---|---|---|---|
| `GET` | `/` | Root status message | `SabziCart API is running. Try /api/prices` |
| `GET` | `/api/health` | Service health, hostname, & Node version | `{"status":"ok","server":"...","node":"v22.x"}` |
| `GET` | `/api/prices` | Vegetable market prices (PKR/kg) | `{"currency":"PKR per kg","prices":{...}}` |

---

## Getting Started

### 1. Run Locally

```bash
# Install dependencies
npm install

# Start the server
npm start
```

The server will be available at `http://localhost:3000`.

---

### 2. Run with Docker

#### Build the Docker Image
```bash
docker build -t antonx-docker-node-api .
```

#### Run the Container
```bash
docker run -d -p 3000:3000 --name sabzicart-api antonx-docker-node-api
```

#### Test Endpoints
```bash
curl http://localhost:3000/
curl http://localhost:3000/api/health
curl http://localhost:3000/api/prices
```

#### Stop & Remove Container
```bash
docker stop sabzicart-api
docker rm sabzicart-api
```

