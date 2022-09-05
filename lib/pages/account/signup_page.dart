import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Kaydol",
                    style: darkBlue29,
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "İsim",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_rounded),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "E-posta",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Telefon",
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Şifre",
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Şifreyi Onayla",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: lightGreen,
                      padding: EdgeInsets.symmetric(
                          horizontal: 105.w, vertical: 27.h),
                    ),
                    child: Text(
                      "Kaydol",
                      style: white21,
                    ),
                  ),
                  SizedBox(height: 5.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Hesabınız var mı?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          primary: lightGreen,
                        ),
                        child: const Text("Giriş yap."),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
