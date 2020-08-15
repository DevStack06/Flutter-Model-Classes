import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modelapp/Model/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Model model = Model();
  bool circular = true;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get("http://192.168.43.92:5000/profile/");
    var r = json.decode(res.body);
    setState(() {
      model = Model.fromJson(r);
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
                    Text(model.name),
                    Text(model.phonenumber),
                  ],
                ),
        ),
      ),
    );
  }
}
