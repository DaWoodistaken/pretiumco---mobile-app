import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//--------------------------------------------COLORS--------------------------------------------
//Colors used on website

Color darkGreen = const Color.fromARGB(255, 6, 73, 54);
//Color blue = const Color.fromARGB(255, 82, 100, 132);
Color cream = const Color.fromARGB(255, 248, 238, 214);
Color white = Colors.white;
Color ligthRed = const Color.fromARGB(255, 252, 234, 233);
Color ligthRed2 = const Color.fromARGB(255, 247, 193, 189);

//Colors used on Figma

Color darkBlue = const Color.fromARGB(255, 55, 74, 98);
Color lightGreen = const Color.fromARGB(255, 74, 165, 116);
Color lightOrange = const Color.fromARGB(255, 232, 217, 181);
Color green = const Color.fromARGB(255, 87, 125, 96);
Color lightBlue = const Color.fromARGB(255, 128, 148, 174);
Color white2 = const Color.fromARGB(255, 250, 243, 224);
Color red = const Color.fromARGB(255, 209, 0, 0);

Color accentOrange = const Color.fromARGB(255, 255, 94, 0);

//Color gradient

Color g1 = const Color.fromARGB(255, 251, 245, 231);
Color g2 = const Color.fromARGB(255, 248, 239, 217);

//Color neumorphism
Color n1 = const Color.fromARGB(255, 5, 62, 46);
Color n2 = const Color.fromARGB(255, 7, 84, 62);

//wells fargo
Color wcream = const Color.fromARGB(255, 244, 240, 237);
Color wcream2 = const Color.fromARGB(255, 238, 234, 231);
Color wred = const Color.fromARGB(255, 213, 32, 41);
Color wblue = const Color.fromARGB(255, 184, 191, 220);
Color wblue2 = const Color.fromARGB(255, 213, 211, 223);
//--------------------------------------------TEXT STYLES--------------------------------------------

TextStyle navBarTS = TextStyle(
  color: darkGreen,
  fontSize: 19.sp,
  fontWeight: FontWeight.w600,
);

var onboardTitleTS = TextStyle(
  color: darkBlue,
  fontSize: 29.sp,
  fontWeight: FontWeight.w600,
);
var onboardTextTS = TextStyle(
  color: darkBlue,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

TextStyle tabBarTS = TextStyle(
  color: green,
  fontSize: 17.sp,
  fontWeight: FontWeight.w700,
);
TextStyle unselectedTabBarTS = TextStyle(
  color: green,
  fontSize: 17.sp,
  fontWeight: FontWeight.w400,
);
TextStyle black17400 = TextStyle(
  color: Colors.black,
  fontSize: 17.sp,
  fontWeight: FontWeight.w400,
);
TextStyle profileInfoTS2 = TextStyle(
  color: Colors.black,
  fontSize: 23.sp,
  fontWeight: FontWeight.w400,
);
TextStyle activityTS1 = TextStyle(
  color: Colors.black,
  fontSize: 21.sp,
  fontWeight: FontWeight.w400,
);
TextStyle activityTS2 = TextStyle(
  color: Colors.black,
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
);

TextStyle black14400 = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

TextStyle black15 = TextStyle(
  fontSize: 15.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle black17 = TextStyle(
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle black19 = TextStyle(
  fontSize: 19.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle black21 = TextStyle(
  fontSize: 21.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle black23 = TextStyle(
  fontSize: 23.sp,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

TextStyle black29 = TextStyle(
  fontSize: 29.sp,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle white13 = TextStyle(
  color: white,
  fontSize: 13.sp,
  fontWeight: FontWeight.w600,
);

TextStyle white17 = TextStyle(
  color: white,
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
);

TextStyle white19 = TextStyle(
  color: white,
  fontSize: 19.sp,
  fontWeight: FontWeight.w600,
);

TextStyle white21 = TextStyle(
  color: white,
  fontSize: 21.sp,
  fontWeight: FontWeight.w600,
);

TextStyle white29 = TextStyle(
  fontSize: 29.sp,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

TextStyle darkBlue11 = TextStyle(
  fontSize: 11.sp,
  fontWeight: FontWeight.w400,
  color: darkBlue,
);

TextStyle darkBlue29 = TextStyle(
  fontSize: 29.sp,
  fontWeight: FontWeight.w600,
  color: darkBlue,
);

TextStyle darkGreen13 = TextStyle(
  color: darkGreen,
  fontSize: 13.sp,
  fontWeight: FontWeight.w600,
);

TextStyle darkGreen17 = TextStyle(
  color: darkGreen,
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
);

TextStyle darkGreen23 = TextStyle(
  color: darkGreen,
  fontSize: 23.sp,
  fontWeight: FontWeight.w600,
);

TextStyle darkRed17 = TextStyle(
  color: Colors.red.shade900,
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
);

TextStyle lightGreen17 = TextStyle(
  color: lightGreen,
  fontSize: 17.sp,
  fontWeight: FontWeight.w600,
);

TextStyle style16 = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
);

//--------------------------------------------BOX SHADOWS--------------------------------------------

BoxShadow boxShadow1 = BoxShadow(
  color: Colors.grey[500]!,
  offset: Offset(5.w, 5.h),
  blurRadius: 15.r,
  spreadRadius: 1.r,
);

BoxShadow boxShadow2 = BoxShadow(
  color: Colors.grey[200]!,
  offset: Offset(-5.w, -5.h),
  blurRadius: 15.r,
  spreadRadius: 1.r,
);
