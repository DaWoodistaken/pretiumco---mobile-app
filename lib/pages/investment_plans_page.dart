import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretiumco/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/profile_page.dart';
import 'package:pretiumco/design_patterns.dart';

int cardIndex = 0;

var pretiumData = [
  {
    "productTitle": "Konut - 043\nConcord, Kadıköy, İstanbul.",
    "primaryPrice": "14.492,32 TRY",
    "estimatedReturn": "146,763.00 TRY",
  },
  {
    "productTitle": "Konut - 044\nSamsun Apartmanı, Beyoğlu, İstanbul.",
    "primaryPrice": "11.671,11 TRY",
    "estimatedReturn": "118.193,00 TRY",
  },
  {
    "productTitle": "Konut - 045\nFortis Sinanlı, Kadıköy, İstanbul.",
    "primaryPrice": "14.894,33 TRY",
    "estimatedReturn": "150.834,00 TRY",
  },
  {
    "productTitle": "Konut - 051\nNuhoğlu, Kadıköy, İstanbul",
    "primaryPrice": "13.778,73 TRY",
    "estimatedReturn": "139.537,00 TRY",
  },
];

class InvestmentPlansPage extends StatefulWidget {
  const InvestmentPlansPage({Key? key}) : super(key: key);

  @override
  State<InvestmentPlansPage> createState() => InvestmentPlansPageState();
}

class InvestmentPlansPageState extends State<InvestmentPlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: darkGreen),
        backgroundColor: Colors.grey[200],
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
          "Yatırım Planları",
          style: black23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 350.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      style: black17400,
                      "Kira getirisi elde etmek için bir mülkünüz olması gerekmez. Bir yatırım aracının ücretini ödedikten sonra 30 aylık kira ödemelerini almış olursunuz.",
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: pretiumData.length,
                    itemBuilder: (context, index, realIndex) {
                      final singleData = pretiumData[index];

                      return buildCard(
                          singleData["productTitle"].toString(),
                          singleData["primaryPrice"].toString(),
                          singleData["estimatedReturn"].toString(),
                          index);
                    },
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          cardIndex = index;
                        });
                      },
                      enlargeCenterPage: true,
                      height: 620.h,
                    ),
                  ),
                  //Text(cardIndex.toString()),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 65.h,
                      width: 250.w,
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
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.w, horizontal: 10.h),
                        child: Center(
                          child: Text(
                            "Şimdi Yatırım Yapın",
                            style: black17,
                          ),
                        ),
                      ),
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

  Widget buildCard(
    String productTitle,
    String primaryPrice,
    String estimatedReturn,
    int index,
  ) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(6, 6),
              blurRadius: 15.r,
              spreadRadius: 1.r,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-6, -6),
              blurRadius: 15.r,
              spreadRadius: 1.r,
            ),
          ],
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(25.r)),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
        padding:
            EdgeInsets.only(top: 27.h, bottom: 60.h, left: 27.w, right: 27.w),
        width: 356.w,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 207.w,
                child: Text(
                  textAlign: TextAlign.center,
                  productTitle,
                  style: black21,
                ),
              ),
              const Spacer(flex: 6),
              Text(
                "30",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(flex: 2),
              Text(
                "Ay Boyunca Kesintisiz Gelir",
                style: black17,
              ),
              const Spacer(flex: 6),
              Text(
                "Aylık Tahmini Getiri",
                style: black17,
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 200.w,
                child: Text(
                  textAlign: TextAlign.center,
                  primaryPrice,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 31.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(flex: 6),
              Divider(
                color: Colors.black,
                thickness: 1.sp,
                indent: 25.w,
                endIndent: 25.w,
              ),
              const Spacer(flex: 6),
              Row(
                children: [
                  Text(
                    "Yatırım Maaliyeti",
                    style: black15,
                  ),
                  const Spacer(),
                  Text(
                    estimatedReturn,
                    style: black15,
                  ),
                ],
              ),
              const Spacer(flex: 6),
              Row(
                children: [
                  Text(
                    "Son Ayın Net Karı",
                    style: black15,
                  ),
                  const Spacer(),
                  Text(
                    primaryPrice,
                    style: black15,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
