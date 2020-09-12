const express = require("express");
const Profile = require("../models/profile.model");
const router = express.Router();

router.route("/all").get((req, res) => {
  Profile.find({}, (err, profiles) => {
    if (err) {
      res.status(400).json({ error: err });
    } else {
      res.json({ data: profiles });
    }
  });
});
router.route("/all2").get((req, res) => {
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

//adding a list of user profile data
router.route("/addAll/").post((req, res) => {
  req.body
    .map((i) => {
      const profile = new Profile({
        name: i.body.name,
        phonenumber: i.body.phonenumber,
      });
      profile.save();
    })
    .then(() =>
      res.json({ Message: "Profile added successfully !", data: profile })
    )
    .catch((err) => res.status(400).json({ Error: err }));
});

router.route("/socialData").get((req, res) => {
  msg = {
    Name: "Balram Rathore",
    "YT Channel": "Dev Stack",
    "Social Media": {
      "FB Page": "https://www.facebook.com/devstack06",
      "Instagram Page": "https://www.instagram.com/dev_stack06/",
      Twitter: "https://twitter.com/DevStack06",
    },
  };
  return res.json(msg);
});

router.route("/socialData2").get((req, res) => {
  msg = {
    name: "Balram Rathore",
    channelName: "Dev Stack",
    socialMedia: {
      fbPage: "https://www.facebook.com/devstack06",
      instaPage: {
        channelPage: "https://www.instagram.com/dev_stack06/",
        ownPage: "https://www.instagram.com/rathore_balram06/",
      },
      twitter: "https://twitter.com/DevStack06",
    },
  };
  return res.json(msg);
});

router.route("/socialData3").get((req, res) => {
  msg = [
    {
      name: "Balram Rathore",
      channelName: "Dev Stack",
      socialMedia: {
        fbPage: "https://www.facebook.com/devstack06",
        instaPage: {
          channelPage: "https://www.instagram.com/dev_stack06/",
          ownPage: "https://www.instagram.com/rathore_balram06/",
        },
        twitter: "https://twitter.com/DevStack06",
      },
    },
    {
      name: "Saket Sinha",
      channelName: "",
      socialMedia: {
        fbPage: "FbPage/SaketSinha",
        instaPage: {
          channelPage: "",
          ownPage: "Insta12345",
        },
        twitter: "",
      },
    },
    {
      name: "Aquib Sahab",
      channelName: "Tech123",
      socialMedia: {
        fbPage: "Aquib Tech",
        instaPage: {
          channelPage: "XYZ1",
          ownPage: "XYZ2",
        },
        twitter: "XYZ3",
      },
    },
  ];
  return res.json(msg);
});

router.route("/delete/:name").delete((req, res) => {
  console.log(req.params.name);
  Profile.findOneAndDelete({ name: req.params.name }, (err, result) => {
    if (err) return res.status(500).json({ msg: err });
    const msg = {
      msg: "User deleted",
      username: req.params.username,
    };
    return res.json(msg);
  });
  // res.json("ok");
});
router.route("/delete1/").delete((req, res) => {
  console.log(req.params.name);
  Profile.findOneAndDelete(
    { _id: "5f509e85a8d8a75680704e2f" },
    (err, result) => {
      if (err) return res.status(500).json({ msg: err });
      const msg = {
        msg: "User deleted",
        username: req.params.username,
      };
      return res.json(msg);
    }
  );
  // res.json("ok");
});

//adding and update profile image

module.exports = router;
