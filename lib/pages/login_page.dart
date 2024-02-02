import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const nameRoute = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}