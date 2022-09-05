import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/account/login_page.dart';
import 'package:pretiumco/design_patterns.dart';

class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              Text(
                "Şifreniz Başarıyla Sıfırlandı",
                style: darkBlue29,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 90.h,
              ),
              SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 0.h),
                  color: cream,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/successful.png",
                          color: lightGreen,
                        ),
                        SizedBox(
                          height: 80.h,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: lightGreen,
                  padding:
                      EdgeInsets.symmetric(horizontal: 90.w, vertical: 18.h),
                ),
                child: Text(
                  "Giriş Yap",
                  style: white21,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
