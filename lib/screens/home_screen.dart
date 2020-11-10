import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:online_course_v2/model/category_model.dart';
import 'package:online_course_v2/screens/detail_screen.dart';
import 'package:online_course_v2/utilities/constants_utilities.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List colors = [
      Colors.blue[50],
      Colors.red[50],
      Colors.green[50],
      Colors.yellow[50],
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: darkColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: darkColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Hafid",
                    style: TextStyle(
                        color: darkColor,
                        fontSize: 36,
                        fontFamily: "Poppins-SemiBold"),
                  ),
                  Text(
                    "Find a perfect course for you",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                        fontFamily: "Poppins-Regular"),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInQuad,
                enlargeCenterPage: true,
              ),
              items: [0, 1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: size.width,
                        padding: EdgeInsets.all(20),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
                        decoration: BoxDecoration(
                            color: colors[i],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                alignment: Alignment.centerRight,
                                image: AssetImage(categories[i].image),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Online \nCourse \ntext $i',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "Poppins-Regular",
                                  color: darkColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: primaryColor,
                              child: InkWell(
                                splashColor: darkColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                onTap: () {},
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    child: Center(
                                      child: Icon(Icons.play_arrow_outlined,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Online Course",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        color: darkColor,
                        fontSize: 24),
                  ),
                  Text("See All",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: primaryColor,
                          fontSize: 16))
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(20),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DetailScreen();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: index.isEven ? 200 : 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colors[index],
                          image: DecorationImage(
                              alignment: Alignment.bottomCenter,
                              image: AssetImage(categories[index].image),
                              fit: BoxFit.contain)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[index].name,
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                fontWeight: FontWeight.w600,
                                color: darkColor,
                                fontSize: 18),
                          ),
                          Text(
                            '${categories[index].numOfCourses} Courses',
                            style: TextStyle(
                                fontFamily: "Poppins-Regular",
                                color: Colors.grey[700],
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
