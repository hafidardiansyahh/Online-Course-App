import 'package:flutter/material.dart';
import 'package:online_course_v2/screens/home_screen.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';
import 'package:online_course_v2/widgets/course_content_widget.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[50],
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before_outlined,
            color: darkColor,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: darkColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[50],
            image: DecorationImage(
                image: AssetImage("assets/images/img4.png"),
                alignment: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.only(
                          left: 10, top: 5, right: 20, bottom: 5),
                      child: Text(
                        "BestSeller".toUpperCase(),
                        style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: darkColor),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Design Thinking",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        fontSize: 26,
                        color: darkColor),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.grey[700]),
                      SizedBox(width: 2),
                      Text("18k",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: 16,
                              color: Colors.grey[700])),
                      SizedBox(width: 4),
                      Icon(Icons.supervised_user_circle,
                          color: Colors.grey[700]),
                      SizedBox(width: 2),
                      Text("4.9",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: 16,
                              color: Colors.grey[700])),
                    ],
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "\$50 ",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: 32,
                              color: darkColor)),
                      TextSpan(
                          text: "\$70",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: 18,
                              color: darkColor.withOpacity(.5),
                              decoration: TextDecoration.lineThrough))
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38),
            Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50)),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 40),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Course Content",
                                    style: TextStyle(
                                        fontFamily: "Poppins-SemiBold",
                                        fontSize: 22,
                                        color: darkColor)),
                                SizedBox(height: 30),
                                CourseContentWidget(
                                  number: "01",
                                  duration: 5.35,
                                  title: "Welcome to the Course",
                                  isDone: true,
                                ),
                                CourseContentWidget(
                                  number: "02",
                                  duration: 10.21,
                                  title: "Flutter Fundamental - Intro",
                                  isDone: true,
                                ),
                                CourseContentWidget(
                                  number: "03",
                                  duration: 24.03,
                                  title: "Dart Basic",
                                  isDone: false,
                                ),
                                CourseContentWidget(
                                  number: "04",
                                  duration: 58.22,
                                  title: "Flutter Basic",
                                  isDone: false,
                                ),
                                CourseContentWidget(
                                  number: "05",
                                  duration: 24.35,
                                  title: "Flutter UI",
                                  isDone: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            bottom: 20,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 50,
                                        color: darkColor.withOpacity(.1))
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: size.height * 0.06,
                                    width: size.width * 0.2,
                                    decoration: BoxDecoration(
                                        color: lightColor,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 20),
                                  Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: primaryColor,
                                    child: InkWell(
                                      splashColor: lightColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      onTap: () {},
                                      child: Container(
                                        width: size.width * 0.54,
                                        height: 40,
                                        child: Center(
                                            child: Text(
                                          "Buy Now",
                                          style: TextStyle(
                                              fontFamily: "Poppins-SemiBold",
                                              fontSize: 18,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
