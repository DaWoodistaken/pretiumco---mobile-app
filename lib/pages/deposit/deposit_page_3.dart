import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/deposit/deposit_page_4.dart';
import 'package:pretiumco/pages/profile_page.dart';

class DepositPage3 extends StatefulWidget {
  DepositPage3({Key? key}) : super(key: key);

  @override
  State<DepositPage3> createState() => _DepositPage3State();
}

class _DepositPage3State extends State<DepositPage3> {
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
          "Para Yatırmayı Onayla",
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
                    "3/4",
                    style: black23,
                  ),
                  SizedBox(height: 40..h),
                  SizedBox(
                    width: 232.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Hesabınıza 8,105.00 TRY yatırmak üzeresiniz.",
                      style: black17,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Container(
                    padding: EdgeInsets.only(
                        top: 27.h, bottom: 50.h, left: 27.w, right: 27.w),
                    color: green,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 210.w,
                            child: Text(
                              textAlign: TextAlign.center,
                              "Para Yatırma İşleminizi Onaylayın",
                              style: white21,
                            ),
                          ),
                          SizedBox(height: 60.h),
                          Text(
                            textAlign: TextAlign.center,
                            "Ödeme şekli",
                            style: white17,
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            textAlign: TextAlign.center,
                            "Banka Transferi",
                            style: white17,
                          ),
                          SizedBox(height: 30.h),
                          Divider(
                            color: white,
                            thickness: 1.sp,
                            indent: 40.w,
                            endIndent: 40.w,
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            textAlign: TextAlign.center,
                            "Yatırılacak tutar",
                            style: white17,
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            textAlign: TextAlign.center,
                            "8,105.00 TRY",
                            style: TextStyle(
                              color: white,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
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
                                builder: (context) => DepositPage4()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: green,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.w, vertical: 16.h),
                        ),
                        child: Text(
                          "Onayla",
                          style: TextStyle(
                            color: white,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w600,
                          ),
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
