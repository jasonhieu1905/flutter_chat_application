import 'package:chat_application/components/rounded_text_field_container.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              width: 100,
              height: 100,
              image: AssetImage('assets/images/login.jpg'),
            ),
            RoundedTextFieldContainer(
              hintText: 'Enter username',
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

