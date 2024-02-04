import 'package:flutter/material.dart';
import './pages/login_page.dart';
import './pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: ProfilePage(),
      // initialRoute: LoginPage.nameRoute,
      initialRoute: ProfilePage.nameRoute,
      routes: {
        LoginPage.nameRoute: (context) => LoginPage(),
        ProfilePage.nameRoute: (context) => ProfilePage(),
      },
    );
  }
}


