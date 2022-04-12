import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_app/color.dart';
import 'package:tech_app/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        routes.home: (context) => HomeScreen(),
        routes.login: (context) => LoginPage(),
        routes.signup: (context) => SignupPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColor.Background,
        body: HomeScreen(),
      ),
    );
  }
}
