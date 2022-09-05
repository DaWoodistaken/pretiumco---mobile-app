import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretiumco/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/deposit/deposit_page_1.dart';
import 'package:pretiumco/pages/investment_plans_page.dart';
import 'package:pretiumco/pages/profile_page.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/pages/transactions_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _navBarIndex = 0;
  final pages = [
    Center(
      child: Text("Hesap Özeti", style: TextStyle(fontSize: 70)),
    ),
    Center(
      child: Text("İşlemler", style: TextStyle(fontSize: 70)),
    ),
    Center(
      child: Text("Geçmiş", style: TextStyle(fontSize: 70)),
    ),
    Center(
      child: Text("Yatırım", style: TextStyle(fontSize: 70)),
    ),
    Center(
      child: Text("Menü", style: TextStyle(fontSize: 70)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _navBarIndex,
          onDestinationSelected: (value) {
            setState(() {
              _navBarIndex = value;
            });
          },
          backgroundColor: Colors.white,
          height: 70,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(Icons.dashboard),
              label: "Hesap Özeti",
            ),
            NavigationDestination(
              icon: Icon(Icons.account_balance_wallet_outlined),
              selectedIcon: Icon(Icons.account_balance_wallet),
              label: "İşlemler",
            ),
            NavigationDestination(
              icon: Icon(Icons.manage_search_outlined),
              selectedIcon: Icon(Icons.manage_search),
              label: "Geçmiş",
            ),
            NavigationDestination(
              icon: Icon(Icons.currency_lira_outlined),
              selectedIcon: Icon(Icons.currency_lira),
              label: "Yatırım",
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_outlined),
              selectedIcon: Icon(Icons.menu),
              label: "Menü",
            ),
          ],
        ),
      ),
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
          "Hesap Özeti",
          style: darkGreen23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: wcream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [wblue, wblue2],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: wcream2,
                            width: 2,
                          ),
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
                              SizedBox(height: 20.h),
                              Text(
                                "9,451 TRY",
                                style: black29,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "**** 4168",
                                style: black17,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 26.h),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: wcream2,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25.r)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.w, horizontal: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Toplam Yükleme",
                                style: black17,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "12,521 TRY",
                                style: black29,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Bu ay 0 TRY",
                                style: black17,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26.h,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: wcream2,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25.r)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.w, horizontal: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Toplam Çekme",
                                style: black17,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "2,980 TRY",
                                style: black29,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "**** 4168",
                                style: black17,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 56.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//body: pages[_navBarIndex]

var dashboardTemp = SafeArea(
  child: SingleChildScrollView(
    child: Stack(
      children: [
        Container(
          height: 300.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [wblue, wblue2],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: wcream2,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.r)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kalan Bakiye",
                          style: black17,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "9,451 TRY",
                          style: black29,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "**** 4168",
                          style: black17,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 26.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: wcream2,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.r)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toplam Yükleme",
                          style: black17,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "12,521 TRY",
                          style: black29,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Bu ay 0 TRY",
                          style: black17,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: wcream2,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.r)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Toplam Çekme",
                          style: black17,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "2,980 TRY",
                          style: black29,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "**** 4168",
                          style: black17,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 56.h),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
);
