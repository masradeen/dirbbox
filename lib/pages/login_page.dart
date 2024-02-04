import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const nameRoute = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          //layer body
          Column(
            children: [
              SizedBox(
                height: 135,
              ),
              Container(
                // color: Colors.amber,
                // width: MediaQuery.of(context).size.width,
                width: 200,
                height: 200,
                child: Image.asset(
                  "assets/images/pic-1.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text("Welcome to "),
              Text("Dirbbox"),
              Container(
                width: 250,
                child: Text(
                  "Best cloud storage platform for all business and individuals to manage there data\n\n Join For Free.",
                )
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/finger.png"),
                        SizedBox(width: 10,),
                        Text(
                          "Smart ID",
                          style: TextStyle(
                            color: Color(0xFF567DF4),
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF567DF4).withOpacity(0.4),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Image.asset("assets/icons/panah-kanan.png"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF567DF4).withOpacity(0.4),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}