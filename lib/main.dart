import 'package:flutter/material.dart';

import 'home.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Home(),
          );
        }
    );
  }
}

