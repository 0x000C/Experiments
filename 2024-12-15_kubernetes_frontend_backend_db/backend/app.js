const express = require("express");
const { Pool } = require("pg");
const app = express();
const PORT = 3000;

// PostgreSQL pool configuration
const pool = new Pool({
  user: "admin",
  host: "database-service",
  database: "timestamps",
  password: "password",
  port: 5432,
});

// Routes
app.post("/add-time", async (req, res) => {
  const currentTime = new Date().toISOString();
  await pool.query("INSERT INTO times (timestamp) VALUES ($1)", [currentTime]);
  res.status(200).send("Time added!");
});

app.get("/timestamps", async (req, res) => {
  const result = await pool.query("SELECT * FROM times ORDER BY timestamp DESC");
  res.json(result.rows.map(row => row.timestamp));
});

app.listen(PORT, () => {
  console.log(`Backend running on port ${PORT}`);
});
