import 'package:flutter/material.dart';

class Que04Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipOval..ImageRepeat'),
        ),
        body: Column(
          children: [
            ClipOval(
              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                repeat: ImageRepeat.repeat,
                height: 500,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
