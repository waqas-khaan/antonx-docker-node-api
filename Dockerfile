FROM node:26-alpine
WORKDIR /app
COPY . .
RUN npm ci
CMD ["node", "server.js"]