import 'package:flutter/material.dart';
import 'package:layout_challenge/views/foreground.dart';

class BackGroundPage extends StatefulWidget {
  @override
  _BackGroundPageState createState() => _BackGroundPageState();
}

class _BackGroundPageState extends State<BackGroundPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
            height: height,
            bottom: height / 2.4,
            child: Image.network('https://i.ibb.co/Y2CNM8V/new-york.jpg')),
        Positioned(
            bottom: 0,
            child: Container(
              height: height / 2.4,
              width: width,
              color: Color(0xFF2D2C35),
            )),
        Foreground()
      ],
    );
  }
}
