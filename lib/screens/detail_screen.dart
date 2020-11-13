import 'package:flutter/material.dart';
import 'package:online_course_v2/screens/home_screen.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
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
    SolidController _controller = SolidController();

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
            ]),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue[50],
              image: DecorationImage(
                  image: AssetImage("assets/images/img2.png"),
                  alignment: Alignment.topCenter)),
          child: Align(
            alignment: Alignment(0, -0.8),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.play_circle_fill_outlined,
                color: primaryColor,
                size: 40,
              ),
            ),
          ),
        ),
        bottomSheet: SolidBottomSheet(
            controller: _controller,
            maxHeight: size.height * 0.86,
            minHeight: size.height * 0.6,
            headerBar: Container(
              width: double.infinity,
              child: Center(
                  child: Text(
                "-",
                style: TextStyle(fontSize: 24, color: primaryColor),
              )),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(children: [
                SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("Flutter Course", style: h2),
                      SizedBox(height: 20),
                      CreatorContentWidget(
                          img:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTYX1dyl9INRo5cbvDeTILRcZVzfcMsCsE0kg&usqp=CAU",
                          job: "Mobile Development",
                          name: "Alex",
                          desc: "Flutter Course Zero to Zero"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Course Content", style: h2),
                          Text("69 Videos", style: h4Grey),
                        ],
                      ),
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
                      CourseContentWidget(
                        number: "06",
                        isDone: false,
                        duration: 28.32,
                        title: "Flutter UI - Home Page",
                      ),
                    ])),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Price\n",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontFamily: "Poppins-Regular",
                                  ),
                                ),
                                TextSpan(
                                  text: "\$70",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: darkColor,
                                    fontFamily: "Poppins-SemiBold",
                                  ),
                                ),
                              ])),
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
                                    width: size.width * 0.6,
                                    height: 40,
                                    child: Center(
                                        child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Poppins-SemiBold",
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ])))
              ]),
            )));
  }
}
