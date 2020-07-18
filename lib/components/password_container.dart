import 'package:chat_application/components/text_field_container.dart';
import 'package:flutter/material.dart';

class PasswordContainer extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const PasswordContainer({
    Key key,
    this.hintText,
    this.icon = Icons.visibility,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextFieldContainer(
              child: TextField(
                onChanged: onChanged,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: Colors.purple[300],
                  ),
                  suffixIcon: Icon(
                    icon,
                    color: Colors.purple[300],
                  )
                ),
              )
            ),
    );
  }
}