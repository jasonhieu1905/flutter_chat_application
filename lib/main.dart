import 'package:chat_application/screens/home.dart';
import 'package:chat_application/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Application',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellow[50],
      ),
      home: LoginScreen(),
    );
  }
}
