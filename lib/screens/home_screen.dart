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

    final List<int> sliders = [0, 1, 2, 3];

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
                  Text("Hi Hafid", style: h1Black),
                  Text("Find a perfect course for you", style: h4Grey),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInQuad,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  onPageChanged: (index, reason) {
                    setState(() {});
                  }),
              items: sliders.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: size.width,
                        padding: EdgeInsets.all(16),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
                        decoration: BoxDecoration(
                            color: colors[i],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight,
                              image: AssetImage(categories[i].image),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Online \nCourse $i',
                              style: h3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: sliders.map((index) {
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: i == index
                                        ? primaryColor
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              }).toList(),
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
                  Text("Online Course", style: h2),
                  Text("See All", style: h3Primary)
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                padding: EdgeInsets.all(20),
                itemCount: categories.length,
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
                              fit: BoxFit.contain,
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(categories[index].name, style: h3),
                            Text(
                              '${categories[index].numOfCourses} Courses',
                              style: h4,
                            )
                          ],
                        )),
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
