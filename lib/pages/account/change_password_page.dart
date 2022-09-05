import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: lightGreen,
        ),
        backgroundColor: cream,
        elevation: 0,
      ),
      backgroundColor: cream,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Şifreyi Değiştir",
                  style: darkBlue29,
                ),
                SizedBox(
                  height: 140.h,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: darkBlue,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    hintText: "Mevcut Şifre",
                    hintStyle: style16,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: darkBlue,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    hintText: "Yeni Şifre",
                    hintStyle: style16,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: darkBlue,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    hintText: "Şifreyi Onayla",
                    hintStyle: style16,
                  ),
                ),
                SizedBox(height: 140.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightGreen,
                    padding:
                        EdgeInsets.symmetric(horizontal: 75.w, vertical: 27.h),
                  ),
                  child: Text(
                    "Şifreyi Değiştir",
                    style: white21,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
