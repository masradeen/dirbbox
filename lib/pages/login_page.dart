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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
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
                SizedBox(height: 20,),
                Text(
                  "Welcome to ",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 250,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
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
                          primary: Color(0xFFEEF7FE),
                          fixedSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
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
                          primary: Color(0xFF567DF4),
                          fixedSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ig.png"),
                    SizedBox(width: 60,),
                    Image.asset("assets/icons/x.png"),
                    SizedBox(width: 60,),
                    Image.asset("assets/icons/fb.png"),
                  ],
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}