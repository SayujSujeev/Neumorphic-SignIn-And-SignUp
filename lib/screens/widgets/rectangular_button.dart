import 'package:flutter/material.dart';
import 'package:neumorphic_signin_signup/constants/constants.dart';

class RectangularButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const RectangularButton({Key? key, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding,bottom: appPadding /2),
        child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    darkPrimary,
                    lightPrimary,
                  ]
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3,3),
                  spreadRadius: 1,
                  blurRadius: 4,
                  color: darkShadow,
                ),
                BoxShadow(
                  offset: Offset(-5,-5),
                  spreadRadius: 1,
                  blurRadius: 4,
                  color: lightShadow,
                ),
              ]
          ),
          child: Center(
            child: Text(text,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),),
          ),
        ),
      ),
    );
  }
}
