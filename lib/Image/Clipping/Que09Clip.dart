import 'package:flutter/material.dart';

class Que09Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipPath',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipPath Assignment2'),
        ),
        body: Column(
          children: [
            Center(
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Image.network(
                  "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                  height: 200,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que10aClip.jpg'),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que09bClip.jpg'),
              ),
            ),
            Text("Image/Clipping/Que09Clip.dart")
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

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//Note:  https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html
