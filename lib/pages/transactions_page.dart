import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretiumco/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/profile_page.dart';
import 'package:pretiumco/design_patterns.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: darkGreen,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: darkGreen),
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
          "İşlem Geçmişi",
          style: darkGreen23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 320.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          offset: const Offset(3, 3),
                          blurRadius: 15.r,
                          spreadRadius: 1.r,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(-3, -3),
                          blurRadius: 15.r,
                          spreadRadius: 1.r,
                        ),
                      ],
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(25.r)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.w, horizontal: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kalan Bakiye",
                            style: black17,
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            "42,458 TRY",
                            style: black29,
                          ),
                          SizedBox(height: 30.h),
                          Text(
                            "**** 4168",
                            style: black17,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 54.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 65.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: const Offset(3, 3),
                                  blurRadius: 15.r,
                                  spreadRadius: 1.r,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(-3, -3),
                                  blurRadius: 15.r,
                                  spreadRadius: 1.r,
                                ),
                              ],
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.w, horizontal: 10.h),
                              child: Center(
                                child: Text(
                                  "Para Çek",
                                  style: black17,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 65.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: const Offset(3, 3),
                                  blurRadius: 15.r,
                                  spreadRadius: 1.r,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(-3, -3),
                                  blurRadius: 15.r,
                                  spreadRadius: 1.r,
                                ),
                              ],
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.w, horizontal: 10.h),
                              child: Center(
                                child: Text(
                                  "Para Yatır",
                                  style: black17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Divider(
                    color: darkGreen,
                    thickness: 2,
                    indent: 50.w,
                    endIndent: 50.w,
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(-10, -10),
                          blurRadius: 15.r,
                          spreadRadius: 1.r,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(
                        left: 54.w, right: 34.w, top: 44.h, bottom: 44.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "İşlem Geçmişi",
                              style: TextStyle(
                                fontSize: 29.sp,
                                fontWeight: FontWeight.w600,
                                color: darkGreen,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade600,
                                    offset: const Offset(3, 3),
                                    blurRadius: 15.r,
                                    spreadRadius: 1.r,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: const Offset(-3, -3),
                                    blurRadius: 15.r,
                                    spreadRadius: 1.r,
                                  ),
                                ],
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.r)),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: darkGreen,
                                  size: 30.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 40.h),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(3, 3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(-3, -3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                            ],
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r)),
                          ),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                color: darkGreen,
                                borderRadius: BorderRadius.circular(7.r),
                              ),
                              width: 50.w,
                              height: 50.h,
                              child: Image.asset(
                                "assets/icons/ziraat.png",
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              "Ziraat Bankası",
                              style: darkGreen17,
                            ),
                            subtitle: Text(
                              "**** 5497",
                              style: darkGreen13,
                            ),
                            trailing: Text(
                              "+₺9,871",
                              style: lightGreen17,
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(3, 3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(-3, -3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                            ],
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r)),
                          ),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                color: darkGreen,
                                borderRadius: BorderRadius.circular(7.r),
                              ),
                              width: 50.w,
                              height: 50.h,
                              child: Image.asset(
                                "assets/icons/halkbank.png",
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              "Halk Bankası",
                              style: darkGreen17,
                            ),
                            subtitle: Text(
                              "**** 1357",
                              style: darkGreen13,
                            ),
                            trailing: Text(
                              "-₺8,123",
                              style: darkRed17,
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(3, 3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(-3, -3),
                                blurRadius: 15.r,
                                spreadRadius: 1.r,
                              ),
                            ],
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r)),
                          ),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                color: darkGreen,
                                borderRadius: BorderRadius.circular(7.r),
                              ),
                              width: 50.w,
                              height: 50.h,
                              child: Image.asset(
                                "assets/icons/halkbank.png",
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              "Halk Bankası",
                              style: darkGreen17,
                            ),
                            subtitle: Text(
                              "**** 1357",
                              style: darkGreen13,
                            ),
                            trailing: Text(
                              "-₺18,683",
                              style: darkRed17,
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
