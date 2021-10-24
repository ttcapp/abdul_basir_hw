import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String image1 = 'https://picsum.photos/250?image=9';
bool isVisible = false;
String imgBtnText = 'Show Image';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home work - 1'),
        ),
        body: ImageShow()
      ),
    );
  }
}

class ImageShow extends StatefulWidget {
  const ImageShow({Key? key}) : super(key: key);

  @override
  _ImageShowState createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Image.network(image1),
                ),
                Container(
                  child: Image.network(image1),
                ),Container(
                  child: Image.network(image1),
                ),Container(
                  child: Image.network(image1),
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              isVisible = !isVisible;
              imgBtnText = isVisible ? 'Hide Image' : "show image";
            });
          }, child: Text(imgBtnText)),

          Visibility(
            visible: isVisible,
            child: Container(
              child: Image.network(image1),
            ),
          ),
        ],
      ),
    );
  }
}

