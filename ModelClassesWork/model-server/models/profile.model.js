const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Profile = Schema({
  name: {
    type: String,
  },

  phonenumber: {
    type: String,
  },
});

module.exports = mongoose.model("Profile", Profile);
