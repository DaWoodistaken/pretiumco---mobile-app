import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/deposit/deposit_page_2.dart';
import 'package:pretiumco/pages/profile_page.dart';

class DepositPage1 extends StatefulWidget {
  DepositPage1({Key? key}) : super(key: key);

  @override
  State<DepositPage1> createState() => _DepositPage1State();
}

class _DepositPage1State extends State<DepositPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
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
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "1/4",
                    style: black23,
                  ),
                  SizedBox(height: 40..h),
                  SizedBox(
                    width: 272.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Aşağıdaki ödeme seçeneklerinden birini seçin",
                      style: black17400,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: 232.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Hesabınıza güvenli bir şekilde para yatırın.",
                      style: black14400,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => DepositPage2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.grey[350],
                      padding: EdgeInsets.symmetric(
                          horizontal: 70.w, vertical: 16.h),
                    ),
                    child: Text(
                      "Banka Transferi",
                      style: black19,
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
