import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Tutorial - NIC, KKR'),
      ),
      body: new Center(
        child: new Text(
          'Welcome to Flutter Tutorial.',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
