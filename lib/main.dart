import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapplicationui/pages/HomePage.dart';
import 'package:foodapplicationui/pages/StarterPage.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,

    ]);
    return ( new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: StarterPage(),
    ));
  }
}
// life
