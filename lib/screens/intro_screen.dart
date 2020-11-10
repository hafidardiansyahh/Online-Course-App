import 'package:flutter/material.dart';
import 'package:online_course_v2/screens/home_screen.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          Positioned(bottom: 0, child: Image.asset("assets/images/splash.png")),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                children: [
                  Text(
                    "Online Learning",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        fontSize: 36,
                        color: darkColor),
                  ),
                  Text(
                    "Learn with Onlearn",
                    style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        fontSize: 24,
                        color: darkColor),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.8),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              child: InkWell(
                splashColor: greyColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return HomeScreen();
                  }));
                },
                child: Container(
                  width: size.width * 0.9,
                  height: size.width * 0.15,
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        fontSize: 24,
                        color: primaryColor),
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
