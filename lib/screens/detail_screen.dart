import 'package:flutter/material.dart';
import 'package:online_course_v2/screens/home_screen.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';
import 'package:online_course_v2/widgets/course_content_widget.dart';
import 'package:online_course_v2/widgets/creator_content_widget.dart';

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
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[50],
            image: DecorationImage(
                image: AssetImage("assets/images/img2.png"),
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
                        "Best Seller".toUpperCase(),
                        style: h4Bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Flutter Course", style: h2),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.grey[700]),
                      SizedBox(width: 2),
                      Text("18k", style: h4),
                      SizedBox(width: 4),
                      Icon(Icons.supervised_user_circle,
                          color: Colors.grey[700]),
                      SizedBox(width: 2),
                      Text("4.9", style: h4),
                    ],
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "\$50 ", style: h1Black),
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
            SizedBox(height: 20),
            Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40)),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 40),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("About Course", style: h2),
                                SizedBox(height: 20),
                                CreatorContentWidget(
                                    img:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTYX1dyl9INRo5cbvDeTILRcZVzfcMsCsE0kg&usqp=CAU",
                                    job: "Mobile Development",
                                    name: "Alex",
                                    desc: "Flutter Course Zero to Zero"),
                                Text("Course Content", style: h2),
                                SizedBox(height: 30),
                                CourseContentWidget(
                                  number: "01",
                                  isDone: true,
                                  duration: 5.35,
                                  title: "Welcome to the Course",
                                ),
                                CourseContentWidget(
                                  number: "02",
                                  isDone: true,
                                  duration: 10.21,
                                  title: "Flutter Fundamental",
                                ),
                                CourseContentWidget(
                                  number: "03",
                                  isDone: false,
                                  duration: 24.03,
                                  title: "Dart Basic",
                                ),
                                CourseContentWidget(
                                  number: "04",
                                  isDone: false,
                                  duration: 58.22,
                                  title: "Flutter Basic",
                                ),
                                CourseContentWidget(
                                  number: "05",
                                  isDone: false,
                                  duration: 18.11,
                                  title: "Flutter UI - Intro Page",
                                ),
                                CourseContentWidget(
                                  number: "06",
                                  isDone: false,
                                  duration: 24.35,
                                  title: "Flutter UI - Login Page",
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
                              height: 80,
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 50,
                                        offset: Offset(0, 4),
                                        color: darkColor.withOpacity(.1))
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.height * 0.06,
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
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontFamily: "Poppins-SemiBold",
                                          ),
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
