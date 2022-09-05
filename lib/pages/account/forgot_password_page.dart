import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/account/enter_code_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                    height: 140.h,
                  ),
                  Text(
                    "Şifremi Unuttum",
                    style: darkBlue29,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    "Şifrenizi sıfırlamak istediğiniz hesabın telefon numarasını giriniz.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: lightBlue,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
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
                      hintText: "Telefon Numarası",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnterCodePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: lightGreen,
                      padding: EdgeInsets.symmetric(
                          horizontal: 75.w, vertical: 27.h),
                    ),
                    child: Text(
                      "Kodu gönder",
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
      ),
    );
  }
}
