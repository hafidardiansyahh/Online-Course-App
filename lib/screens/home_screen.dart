import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_course_v2/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: primaryColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Hafid",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 36,
                        fontFamily: "Poppins-SemiBold"),
                  ),
                  Text(
                    "Find a perfect course for you",
                    style: TextStyle(
                        color: lightColor,
                        fontSize: 18,
                        fontFamily: "Poppins-Regular"),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInQuad,
                enlargeCenterPage: true,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: size.width,
                        padding: EdgeInsets.all(20),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
                        decoration: BoxDecoration(
                            color: lightColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Online \nCourse \ntext $i',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: "Poppins-Regular",
                                      color: Colors.white),
                                ),
                                Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                  child: InkWell(
                                    splashColor: greyColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return HomeScreen();
                                      }));
                                    },
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        child: Center(
                                          child: Icon(Icons.play_arrow_outlined,
                                              color: primaryColor),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/images/img1.png",
                              width: 150,
                            )
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Online Course",
                style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: darkColor,
                    fontSize: 24),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 240,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Web Programming",
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                color: Colors.white,
                                fontSize: 17)),
                        Text("16 Course",
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                color: Colors.white70,
                                fontSize: 16)),
                        Image.asset(
                          "assets/images/img1.png",
                          height: 120,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
