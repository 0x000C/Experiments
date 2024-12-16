const express = require("express");
const app = express();
const PORT = 80;

// Serve static files
app.use(express.static("."));

// Proxy API calls to backend (adjust backend-service as needed)
app.post("/add-time", (req, res) => {
  res.redirect(`http://backend-service:3000/add-time`);
});

app.get("/timestamps", async (req, res) => {
  const response = await fetch(`http://backend-service:3000/timestamps`);
  const timestamps = await response.json();
  res.json(timestamps);
});

app.listen(PORT, () => {
  console.log(`Frontend running on port ${PORT}`);
});
