import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeEmailPage extends StatefulWidget {
  const ChangeEmailPage({Key? key}) : super(key: key);

  @override
  State<ChangeEmailPage> createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {
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
                  "E-Postayı Değiştir",
                  style: darkBlue29,
                ),
                SizedBox(
                  height: 140.h,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Geçerli E-Posta Adresi",
                      hintStyle: style16),
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Yeni E-Posta Adresi",
                      hintStyle: style16),
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Mevcut Şifre",
                      hintStyle: style16),
                ),
                SizedBox(height: 140.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: lightGreen,
                    padding:
                        EdgeInsets.symmetric(horizontal: 75.w, vertical: 27.h),
                  ),
                  child: Text("E-Postayı Değiştir", style: white21),
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
