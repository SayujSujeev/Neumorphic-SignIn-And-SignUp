import 'package:flutter/material.dart';
import 'package:neumorphic_signin_signup/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String imageSrc;
  final VoidCallback press;

  const RoundedButton({Key? key, required this.imageSrc, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding,bottom: appPadding /2),
        child: Container(
          padding: EdgeInsets.all(appPadding / 2),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
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
          child: Image.asset(imageSrc),
        ),
      ),
    );
  }
}
