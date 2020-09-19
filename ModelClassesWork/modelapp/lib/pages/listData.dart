import 'package:flutter/material.dart';
import 'package:modelapp/Model/listModel.dart';
import 'package:modelapp/Model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'myapp.dart';

class ListData extends StatefulWidget {
  ListData({Key key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  ListModel listModel = ListModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listModel.data = List<Model>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (builder) => bottomsheet());
            }),
        actions: <Widget>[
          FlatButton(
              onPressed: submit,
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: listModel.data == null ? 0 : listModel.data.length,
          itemBuilder: (BuildContext context, index) => Column(
                children: <Widget>[
                  Text(listModel.data[index].name),
                  Text(listModel.data[index].phonenumber),
                ],
              )),
    );
  }

  Widget bottomsheet() {
    return Container(
      // height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
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
              decoration: InputDecoration(labelText: "Phonr Number"),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: addData,
              child: Text("Add"),
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }

  void addData() {
    setState(() {
      listModel.data.add(Model(name: _name.text, phonenumber: _phone.text));
    });
    Navigator.pop(context);
  }

  void submit() {
    var resppnse = http.post(
      "http://192.168.43.92:5000/profile/addAll/",
      headers: {"Content-type": "application/json"},
      body: json.encode(listModel.toJson()),
    );
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}
