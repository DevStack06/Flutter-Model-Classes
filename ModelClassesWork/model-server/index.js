const express = require("express");
const app = express();
const PORT = process.env.PORT || 5000;

const mongoose = require("mongoose");

//database connection
mongoose.connect("mongodb://localhost:27017/blogDB", {
  useNewUrlParser: true,
  useCreateIndex: true,
});

const connection = mongoose.connection;

connection.once("open", () =>
  console.log("mongoDB connection eastablished succesfully")
);

//middleware
app.use(express.json());

//routes
const profile = require("./routes/profile");
app.use("/profile", profile);

//acknoledge api
app.get("/", (req, res) =>
  res.json({ message: "Welcome you are in the main page :)" })
);

app.listen(PORT, "0.0.0.0", () =>
  console.log(`your app is running on port ${PORT} enjoy developing`)
);
