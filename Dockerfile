<<<<<<< HEAD
FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

# Use official lightweight Node.js 22 Alpine image
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package manifests first to leverage Docker layer caching
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose application port
EXPOSE 3000

# Run the API server
CMD ["node", "server.js"]
