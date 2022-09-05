import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/account/add_account_page.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/pages/deposit/deposit_page_1.dart';
import 'package:pretiumco/pages/profile_page.dart';

class InsufficientPage extends StatefulWidget {
  const InsufficientPage({Key? key}) : super(key: key);

  @override
  State<InsufficientPage> createState() => _InsufficientPage();
}

class _InsufficientPage extends State<InsufficientPage> {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              icon: const Icon(Icons.person),
            ),
          )
        ],
        title: Text(
          "Yetersiz Bakiye",
          style: black23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: cream,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80.h),
                Text(
                  "Hesapta Para Yok",
                  style: black29,
                  textAlign: TextAlign.center,
                ),
                SingleChildScrollView(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.w, vertical: 40.h),
                    color: cream,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/empty.png",
                            width: 170.w,
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 270.w,
                  child: Text(
                    "Hesabınızda çekilecek para yok. Para mevcut olduğunda tekrar deneyin.",
                    style: black17400,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Mevcut ödeme yönteminizi kullanarak anında para yatırın.",
                    style: TextStyle(
                        color: lightBlue,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 110.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: green,
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 15.w),
                      ),
                      child: Text(
                        "Özete Git",
                        style: white21,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepositPage1()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: green,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 15.w),
                      ),
                      child: Text(
                        "Şimdi Yatır",
                        style: white21,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
