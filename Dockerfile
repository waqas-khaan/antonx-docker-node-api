<<<<<<< HEAD
FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

=======
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
>>>>>>> 14d759f48b739b39ffdbf092633b7787cd4b6d47
CMD ["node", "server.js"]
