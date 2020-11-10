import 'package:flutter/material.dart';

final greyColor = Color(0xFFF2F2F2);
final darkColor = Color(0xFF191A35);
final lightColor = Color(0xFF9284FE);
final primaryColor = Color(0xFF6C63FF);

final h1 = TextStyle(
    fontSize: 32, color: Colors.white, fontFamily: "Poppins-SemiBold");
final h1Black = TextStyle(
    fontSize: 28, color: Color(0xFF191A35), fontFamily: "Poppins-SemiBold");
final h2 = TextStyle(
    fontSize: 24, color: Color(0xFF191A35), fontFamily: "Poppins-SemiBold");
final h3 = TextStyle(
    fontSize: 18, color: Color(0xFF191A35), fontFamily: "Poppins-SemiBold");
final h3White = TextStyle(
    fontSize: 18, color: Color(0xFFF2F2F2), fontFamily: "Poppins-Regular");
final h3Primary = TextStyle(
    fontSize: 18, color: Color(0xFF6C63FF), fontFamily: "Poppins-Regular");
final h4 = TextStyle(
    fontSize: 16, color: Color(0xFF191A35), fontFamily: "Poppins-Regular");
final h4Grey = TextStyle(
    fontSize: 16, color: Colors.grey[700], fontFamily: "Poppins-Regular");
final h4Bold = TextStyle(
    fontSize: 16, color: Color(0xFF191A35), fontFamily: "Poppins-SemiBold");

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
