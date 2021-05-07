import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView - NIC KKR'),
        ),
        body: Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.purple[600],
                child: const Center(
                    child: Text(
                  'Item 1',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 100,
                color: Colors.purple[500],
                child: const Center(
                    child: Text(
                  'Item 2',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 100,
                color: Colors.purple[400],
                child: const Center(
                    child: Text(
                  'Item 3',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                height: 100,
                color: Colors.purple[300],
                child: const Center(
                    child: Text(
                  'Item 4',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}