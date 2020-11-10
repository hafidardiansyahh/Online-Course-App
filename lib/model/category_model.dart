class CatergoryModel {
  final String name;
  final String image;
  final int numOfCourses;

  CatergoryModel(this.name, this.numOfCourses, this.image);
}

List<CatergoryModel> categories = categoriesData
    .map((item) => CatergoryModel(item["name"], item["course"], item["image"]))
    .toList();

var categoriesData = [
  {
    "name": "UI/UX",
    "course": 19,
    "image": "assets/images/img1.png",
  },
  {
    "name": "Web Developer",
    "course": 24,
    "image": "assets/images/img2.png",
  },
  {
    "name": "Desktop Developer",
    "course": 12,
    "image": "assets/images/img3.png",
  },
  {
    "name": "Flutter",
    "course": 1,
    "image": "assets/images/img4.png",
  },
];
