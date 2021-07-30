import 'package:flutter/material.dart';
import 'package:neumorphic_signin_signup/screens/sign_in/sigin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic SignIn And SignUP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SignInScreen(),
    );
  }
}
