import 'package:flutter/material.dart';
import 'package:pretiumco/pages/account/signup_page.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/account/forgot_password_page.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 140.h),
                  Text(
                    "Giriş Yap",
                    style: darkBlue29,
                  ),
                  SizedBox(height: 150.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      color: ligthRed,
                      border: Border.all(
                        color: ligthRed2,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.dangerous,
                          color: red,
                        ),
                        SizedBox(width: 30.w),
                        SizedBox(
                          width: 200.w,
                          child: Text(
                            "Girdiğiniz e-posta adresi veya şifre yanlış veya hesap mevcut değil.",
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60.h),
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
                  SizedBox(height: 10.h),
                  CheckboxListTile(
                    activeColor: lightGreen,
                    contentPadding: const EdgeInsets.all(0),
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "Beni Hatırla",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: darkBlue,
                      ),
                    ),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(height: 60.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: lightGreen,
                      padding: EdgeInsets.symmetric(
                          horizontal: 105.w, vertical: 27.h),
                    ),
                    child: Text(
                      "Giriş Yap",
                      style: white21,
                    ),
                  ),
                  SizedBox(height: 5.w),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: lightGreen,
                    ),
                    child: const Text("Şifremi Unuttum."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Henüz hesabınız yok mu?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: lightGreen,
                        ),
                        child: const Text("Kaydol."),
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
