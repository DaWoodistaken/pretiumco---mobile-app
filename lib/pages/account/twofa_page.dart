// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pretiumco/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/design_patterns.dart';

class TwoFAPage extends StatefulWidget {
  const TwoFAPage({Key? key}) : super(key: key);

  @override
  State<TwoFAPage> createState() => _TwoFAPageState();
}

class _TwoFAPageState extends State<TwoFAPage> {
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
      drawer: const NavigationDrawer(),
      backgroundColor: cream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 36.h),
                    width: double.infinity,
                    color: lightOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2FA Kimlik Doğrulamasını Etkinleştir",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "1. Adım",
                          style: black17400,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Google Authenticator uygulamasını Google Oyun veya Uygulama mağazasından yükleyin.",
                          style: activityTS2,
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "2. Adım",
                          style: black17400,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Google Authenticator uygulamanızla aşağıdaki QR kodunu tarayın veya uygulamaya manuel olarak hesap ekleyebilirsiniz.",
                          style: activityTS2,
                        ),
                        SizedBox(height: 20.h),
                        Divider(
                          color: Colors.black,
                          thickness: 1.sp,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Manuel olarak hesap ekle:",
                          style: black17400,
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "Hesap Adı:\nPretium Comitatus Teknoloji ve Danışmanlık Şirketi",
                          style: black17400,
                        ),
                        SizedBox(height: 40.h),
                        Align(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Senin Anahtarın:\n2LZ3JJWJJLHBL7ZS",
                            style: black17400,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          child: Container(
                            color: Colors.black,
                            height: 167.h,
                            width: 167.w,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Divider(
                          color: Colors.black,
                          thickness: 1.sp,
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "Kimlik Doğrulayıcı Kodu Girin",
                          style: black17400,
                        ),
                        SizedBox(height: 20.h),
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                color: darkBlue,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 14.h),
                            hintText: "Doğrulamak İçin Kodu Girin",
                            hintStyle: style16,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Align(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: green,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 48.w, vertical: 12.h),
                            ),
                            child: Text(
                              "Onayla ve Etkinleştir",
                              style: white17,
                            ),
                          ),
                        ),
                      ],
                    ),
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
