// server.js - the SabziCart price API (Node.js + Express)
const express = require("express");
const os = require("os");
const app = express();
const PORT = process.env.PORT || 4500;

// Daily vegetable market prices (PKR per kg)
const prices = {
  tomato: 180,
  onion: 120,
  potato: 90,
  spinach: 60,
};

// Root endpoint
app.get("/", (req, res) => {
  res.send("SabziCart API is running. Try /api/prices\n");
});

// Health check endpoint
app.get("/api/health", (req, res) => {
  res.json({
    status: "ok",
    server: os.hostname(),
    node: process.version,
  });
});

// Prices list endpoint
app.get("/api/prices", (req, res) => {
  res.json({
    currency: "PKR per kg",
    prices: prices,
  });
});

// Start listening
app.listen(PORT, "0.0.0.0", () => {
  console.log(`SabziCart API listening on 0.0.0.0:${PORT}`);
});
