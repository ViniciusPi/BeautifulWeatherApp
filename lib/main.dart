import 'package:flutter/material.dart';

import 'views/background.dart';

main(List<String> args) {
  runApp(WheaterApp());
}

class WheaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackGroundPage(),
    );
  }
}
