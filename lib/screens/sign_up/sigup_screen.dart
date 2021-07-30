import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_signin_signup/constants/constants.dart';
import 'package:neumorphic_signin_signup/screens/sign_up/components/social.dart';

import 'components/credentials.dart';
import 'components/head_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            lightPrimary,
            darkPrimary,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadText(),
              Credentials(),
              Social(),
            ],
          ),
        ),
      ),
    );
  }
}
