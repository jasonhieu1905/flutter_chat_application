import 'package:chat_application/components/password_container.dart';
import 'package:chat_application/components/rounded_text_field_container.dart';
import 'package:chat_application/components/text_field_container.dart';
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
            ),
            PasswordContainer(
              hintText: 'Enter password',
              onChanged: (value) {},
            ),
            Container(
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  onPressed: () {},
                  color: Colors.purple[300],
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
