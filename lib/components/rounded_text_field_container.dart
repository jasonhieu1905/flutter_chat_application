
import 'package:chat_application/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedTextFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedTextFieldContainer({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.purple[300],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}