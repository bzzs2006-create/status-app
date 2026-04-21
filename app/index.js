const express = require("express");
const app = express();

app.get("/api/status", (req, res) => {
  res.json({
    status: "ok",
    timestamp: new Date(),
  });
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
