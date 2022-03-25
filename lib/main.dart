// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign2/screens/LandingScreen.dart';
import 'package:uidesign2/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: COLOR_GREEN));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI DESIGN 2",
      theme: ThemeData(textTheme: defaultText),
      home: LandingScreen(),
    );
  }
}
