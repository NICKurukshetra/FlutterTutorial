import 'package:flutter/material.dart';

class Que08Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipPath',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipPath Assignment1'),
        ),
        body: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 200,
                width: 300,
                fit: BoxFit.cover,
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
                image: AssetImage('assets/images/Que08bClip.jpg'),
              ),
            ),
            Text("Image/Clipping/Que08Clip.dart")
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
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//Note:  https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html
