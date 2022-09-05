import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pretiumco/pages/account/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: EdgeInsets.only(bottom: 80.h),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 4;
            });
          },
          controller: _controller,
          children: [
            SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 45.w, vertical: 100.h),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ob1.png"),
                      SizedBox(
                        height: 80.h,
                      ),
                      Text(
                        "Konutunuzu seçin",
                        style: onboardTitleTS,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Saniyeler içinde hesap açın, yatırım yapabileceğiniz konut seçeneklerinizi kataloğumuzdan inceleyin.",
                        style: onboardTextTS,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 95.h),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ob2.png"),
                      SizedBox(
                        height: 80.h,
                      ),
                      Text(
                        "Yatırımınızı yapın",
                        style: onboardTitleTS,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Yatırım planlarınıza uygun gördüğünüz konut için hesaplanan yatırım maaliyetini, kirayı size devreden tarafa aktarın.",
                        style: onboardTextTS,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 58.h),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ob3.png"),
                      SizedBox(
                        height: 35.h,
                      ),
                      Text(
                        "Belgeleri Onaylayın",
                        style: onboardTitleTS,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Yatırımınız onaylandıktan sonraki 24 saatlik dilimde, size ulaştırılacak belgeleri tasdik edin. Bu belgeler seçtiğiniz konutun kira bedelinin, belirlenen vadede size ödenmesini teminat altına alıyor olacaktır.",
                        style: onboardTextTS,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 90.h),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ob4.png"),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "Amorti Edin",
                        style: onboardTitleTS,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Seçmiş bulunduğunuz konutun net kira geliri hizmet bedeli olmaksızın maliyetiniz tamamlanana kadar her ay tarafınıza ödensin. Kira geliriniz genelde 8 ayda maaliyetinizi çıkartıyor.",
                        style: onboardTextTS,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 45.h),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ob5.png"),
                      SizedBox(
                        height: 70.h,
                      ),
                      Text(
                        "Arkanıza Yaslanın",
                        style: onboardTitleTS,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Maliyetiniz tamamlandıktan sonra %22 servis bedelimiz çıkılarak hesaplanacak net kira gelirlerinizi 30. ayınıza kadar almaya devam edin.",
                        style: onboardTextTS,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(bottom: 57.h),
        height: 100,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                _controller.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(120.w, 60.h),
                primary: Colors.grey[500],
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
              ),
              child: Text(
                "Önceki",
                style: white21,
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                effect: SwapEffect(
                  activeDotColor: darkGreen,
                ),
                controller: _controller,
                count: 5,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (isLastPage) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                } else {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(120.w, 60.h),
                primary: darkGreen,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    topLeft: Radius.circular(10.r),
                  ),
                ),
              ),
              child: Text(
                "Sonraki",
                style: white21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
