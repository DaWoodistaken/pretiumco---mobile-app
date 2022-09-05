import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/deposit/deposit_page_3.dart';
import 'package:pretiumco/pages/profile_page.dart';

class DepositPage2 extends StatefulWidget {
  DepositPage2({Key? key}) : super(key: key);

  @override
  State<DepositPage2> createState() => _DepositPage2State();
}

class _DepositPage2State extends State<DepositPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cream,
        elevation: 0,
        iconTheme: IconThemeData(color: green),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              icon: const Icon(Icons.person),
            ),
          )
        ],
        title: Text(
          "Para Yatır",
          style: black23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: cream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "2/4",
                    style: black23,
                  ),
                  SizedBox(height: 40..h),
                  SizedBox(
                    width: 272.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Yatırmak istediğiniz miktarı girin",
                      style: black17400,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Miktar",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 272.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Hesabınızı seçin",
                      style: black17400,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Hesap",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: lightOrange,
                          padding: EdgeInsets.symmetric(
                              horizontal: 60.w, vertical: 16.h),
                        ),
                        child: Text(
                          "İptal",
                          style: black19,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepositPage3()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: lightOrange,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.w, vertical: 16.h),
                        ),
                        child: Text(
                          "Devam",
                          style: black19,
                        ),
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
