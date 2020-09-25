import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modelapp/Model/model.dart';
import 'dart:convert';

import 'package:modelapp/pages/myapp.dart';

class AppData extends StatefulWidget {
  AppData({Key key}) : super(key: key);

  @override
  _AppDataState createState() => _AppDataState();
}

class _AppDataState extends State<AppData> {
  TextEditingController _phone = TextEditingController();
  TextEditingController _name = TextEditingController();
  Model model = Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _name,
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _phone,
              decoration: InputDecoration(labelText: "Phone Number"),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: send,
              child: Text("Add Data"),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }

  void send() async {
    model = Model(name: _name.text, phonenumber: _phone.text);
    var response = await http.post("http://192.168.43.92:5000/profile/add/",
        headers: {"Content-type": "application/json"},
        body: json.encode(model.toJson()));
    print(response.body);
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}
