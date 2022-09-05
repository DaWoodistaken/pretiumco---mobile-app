import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/investment_plans_page.dart';
import 'package:pretiumco/pages/onboarding_page.dart';
import 'package:pretiumco/pages/transactions_page.dart';
import 'package:pretiumco/design_patterns.dart';

bool showNavBar = false;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const OnboardingPage(),
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}

//TO-DO POP-UP BAR FOR LANGUAGE SELECTION

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.grey[200],
      ),
      child: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.person_rounded,
                  color: darkGreen,
                  size: 50.sp,
                ),
                title: Text("Batuhan Şahin", style: navBarTS),
                onTap: () {},
              ),
              Divider(
                color: darkGreen,
                thickness: 2.sp,
              ),
              ListTile(
                leading: Icon(Icons.dashboard_rounded, color: darkGreen),
                title: Text("Hesap Özeti", style: navBarTS),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet, color: darkGreen),
                title: Text("İşlemler", style: navBarTS),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.manage_search, color: darkGreen),
                title: Text("İşlem Geçmişi", style: navBarTS),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionsPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.currency_lira, color: darkGreen),
                title: Text("Yatırım Araçları", style: navBarTS),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InvestmentPlansPage()),
                  );
                },
              ),
              const Spacer(flex: 1),
              ListTile(
                leading: Icon(Icons.public, color: darkGreen),
                title: Text("Türkçe", style: navBarTS),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info, color: darkGreen),
                title: Text("İletişim", style: navBarTS),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
