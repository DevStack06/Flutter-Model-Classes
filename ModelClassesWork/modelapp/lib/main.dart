import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modelapp/Model/listModel.dart';
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
  ListModel listModel = ListModel();
  bool circular = true;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get("http://192.168.43.92:5000/profile/all2");
    var r = json.decode(res.body);
    setState(() {
      listModel = ListModel.fromJson({"data": r});
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
              : ListView.builder(
                  itemCount: listModel.data.length,
                  itemBuilder: (BuildContext context, int index) =>
                      dataShow(listModel.data[index])),
        ),
      ),
    );
  }

  Widget dataShow(Model obj) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        height: 100,
        // width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Name : ${obj.name}"),
              SizedBox(
                height: 10,
              ),
              Text("PhoneNumber : ${obj.phonenumber}"),
            ],
          ),
        ),
      ),
    );
  }
}
