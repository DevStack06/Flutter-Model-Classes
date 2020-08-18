import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modelapp/Model/model.dart';

import 'Model/Profile/mainModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MainModel mainModel = MainModel();
  bool circular = true;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get("http://192.168.43.92:5000/profile/socialData2");
    var r = json.decode(res.body);
    setState(() {
      mainModel = MainModel.fromJson(r);
      circular = false;
    });
    // print(r["name"]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: circular
              ? CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(mainModel.name),
                    Text(mainModel.channelName),
                    Text("FB Page -----> ${mainModel.socialMedia.fbPage}"),
                    Text("Twitter Page ----> ${mainModel.socialMedia.twitter}"),
                    Text(
                        "Insta channel Page -----> ${mainModel.socialMedia.instaPage.channelPage}"),
                    Text(
                        "Insta Own Page ----> ${mainModel.socialMedia.instaPage.ownPage}"),
                  ],
                ),
        ),
      ),
    );
  }
}
