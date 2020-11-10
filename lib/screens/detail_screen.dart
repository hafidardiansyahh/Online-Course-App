import 'package:flutter/material.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[50],
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before_outlined,
            color: darkColor,
          ),
          onPressed: () {},
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
                        fontFamily: "Poppins-Regular",
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
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
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50)),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Course Content",
                                  style: TextStyle(
                                      fontFamily: "Poppins-SemiBold",
                                      fontSize: 22,
                                      color: darkColor))
                            ],
                          ),
                        )
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
