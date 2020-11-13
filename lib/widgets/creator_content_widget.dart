import 'package:flutter/material.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';

class CreatorContentWidget extends StatelessWidget {
  final String img;
  final String job;
  final String desc;
  final String name;

  CreatorContentWidget({Key key, this.img, this.job, this.desc, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage(img)),
              SizedBox(width: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "$name\n",
                  style: TextStyle(
                    fontSize: 16,
                    color: darkColor,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                TextSpan(
                  text: job,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontFamily: "Poppins-Regular",
                  ),
                ),
              ]))
            ],
          ),
          SizedBox(height: 20),
          Text(desc, style: h4Grey)
        ],
      ),
    );
  }
}
