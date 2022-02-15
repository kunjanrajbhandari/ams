import 'package:amss/practice/bottomnavigationbar.dart';
import 'package:amss/view/login/login.dart';
import 'package:amss/view/main_page.dart';
import 'package:amss/view/onboard_screen/onboard_screen1.dart';
import 'package:amss/view/onboard_screen/main_onboard_screen.dart';
import 'package:amss/view/onboard_screen/select_school.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}
