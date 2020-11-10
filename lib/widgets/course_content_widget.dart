import 'package:flutter/material.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';

class CourseContentWidget extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;

  CourseContentWidget(
      {Key key, this.number, this.duration, this.title, this.isDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            number,
            style: TextStyle(
                fontFamily: "Poppins-Regular",
                fontSize: 32,
                color: darkColor.withOpacity(.15)),
          ),
          SizedBox(width: 20),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "$duration mins\n",
              style:
                  TextStyle(fontFamily: "Poppins-Regular", color: Colors.grey),
            ),
            TextSpan(
              text: title,
              style: TextStyle(
                  fontFamily: "Poppins-SemiBold",
                  height: 1.5,
                  color: darkColor),
            ),
          ])),
          Spacer(),
          Container(
              margin: EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withOpacity(isDone ? 1 : .5),
              ),
              child: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
