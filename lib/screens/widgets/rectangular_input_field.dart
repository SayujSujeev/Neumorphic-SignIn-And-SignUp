import 'package:flutter/material.dart';
import 'package:neumorphic_signin_signup/constants/constants.dart';
import 'package:neumorphic_signin_signup/screens/widgets/neumorphic_text_field_container.dart';

class RectangularInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final bool obscureText;

  const RectangularInputField({Key? key, required this.hintText, required this.icon, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextFieldContainer(
      child: TextField(
        cursorColor: black,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: TextStyle(
            color: black.withOpacity(0.7),
            fontSize: 18,
          ),
          prefixIcon: Icon(icon,color: black.withOpacity(0.7),size: 20,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
