const express = require("express");
const Profile = require("../models/profile.model");
const router = express.Router();

router.route("/all").get((req, res) => {
  Profile.find({}, (err, profiles) => {
    if (err) {
      res.status(400).json({ error: err });
    } else {
      res.json(profiles);
    }
  });
});

//getting a single user data
router.route("/").get((req, res) => {
  Profile.findOne({}, (err, profile) => {
    console.log(profile);
    if (err) {
      res.status(400).json({ error: err });
      console.log(err);
    } else {
      if (profile === null) {
        console.log("here");
        res.json();
      } else {
        res.json(profile);
        // res.json([]);
        console.log("here2");
      }
    }
  });
});

//adding a new user profile data
router.route("/add/").post((req, res) => {
  console.log("inside profile");
  const profile = new Profile({
    name: req.body.name,
    phonenumber: req.body.phonenumber,
  });
  profile
    .save()
    .then(() =>
      res.json({ Message: "Profile added successfully !", data: profile })
    )
    .catch((err) => res.status(400).json({ Error: err }));
});

//adding and update profile image

module.exports = router;
