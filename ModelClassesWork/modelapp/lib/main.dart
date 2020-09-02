import 'package:flutter/material.dart';
import 'package:modelapp/pages/myapp.dart';

void main() {
  runApp(AppContainer());
}

class AppContainer extends StatelessWidget {
  const AppContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}
