import 'package:flutter/material.dart';
import 'package:login_ui/components/text_field_container.dart';
import 'package:login_ui/constans.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChaged;

  const RoundedPasswordField({Key key, this.onChaged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      onChanged: onChaged,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none),
    ));
  }
}
