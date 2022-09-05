import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/account/password_reset_page.dart';

String verificationCode = "";

class EnterCodePage extends StatefulWidget {
  const EnterCodePage({Key? key}) : super(key: key);

  @override
  State<EnterCodePage> createState() => _EnterCodePageState();
}

class _EnterCodePageState extends State<EnterCodePage> {
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
                    "Doğrulama Kodunu Gir",
                    style: darkBlue29,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    "4 haneli doğrulama kodunu giriniz.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: lightBlue,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  PinCodeTextField(
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      fieldHeight: 70.h,
                      fieldWidth: 70.w,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    appContext: context,
                    length: 4,
                    onChanged: ((value) {}),
                    onCompleted: (value) {
                      setState(() {
                        verificationCode = value;
                      });
                    },
                  ),
                  SizedBox(height: 40.h),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Kodu Tekrar Gönder.",
                      style: TextStyle(
                        color: lightGreen,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PasswordResetPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: lightGreen,
                      padding: EdgeInsets.symmetric(
                          horizontal: 106.w, vertical: 14.h),
                    ),
                    child: Text(
                      "Doğrula",
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
