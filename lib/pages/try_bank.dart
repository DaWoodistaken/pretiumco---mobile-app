import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/profile_page.dart';
import 'package:pretiumco/design_patterns.dart';

int cardIndex = 0;

var pretiumData2 = [
  {
    "productTitle": "3 Aylık E-Lira",
    "otherBankBalance": "105.153,00 TL",
    "otherBankCredit": "105.642,80 TL",
    "ourBalance": "113.829,03 TL",
    "ourBalanceMonthly": "37.943,01 TL",
    "monthlyReturnRate": "%13,48",
    "totalReturnRate": "%40,44",
    "months": "3",
  },
  {
    "productTitle": "6 Aylık E-Lira",
    "otherBankBalance": "110.307,00 TL",
    "otherBankCredit": "109.612,22 TL",
    "ourBalance": "130.534,43 TL",
    "ourBalanceMonthly": "21.755,73 TL",
    "monthlyReturnRate": "%30,53",
    "totalReturnRate": "%183,18",
    "months": "6",
  },
  {
    "productTitle": "12 Aylık E-Lira",
    "otherBankBalance": "121.340,00 TL",
    "otherBankCredit": "117.839,00 TL",
    "ourBalance": "184.059,00 TL",
    "ourBalanceMonthly": "15.338,25 TL",
    "monthlyReturnRate": "%84,83",
    "totalReturnRate": "%1.117,96",
    "months": "12",
  },
];

class TryBankPage extends StatefulWidget {
  const TryBankPage({Key? key}) : super(key: key);

  @override
  State<TryBankPage> createState() => TryBankPageState();
}

class TryBankPageState extends State<TryBankPage> {
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
            padding: const EdgeInsets.only(right: 10),
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
          "Kredi Yatırımı",
          style: black23,
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: Center(
              child: Column(
                children: [
                  // SizedBox(
                  //   width: 350.w,
                  //   child: Text(
                  //     textAlign: TextAlign.center,
                  //     style: black17400,
                  //     "Bir yatırım aracının ücretini ödedikten sonra 30 aylık kira ödemelerini almış olursunuz.",
                  //   ),
                  // ),
                  CarouselSlider.builder(
                    itemCount: pretiumData2.length,
                    itemBuilder: (context, index, realIndex) {
                      final singleData = pretiumData2[index];

                      return buildCard(
                          singleData["productTitle"].toString(),
                          singleData["otherBankBalance"].toString(),
                          singleData["otherBankCredit"].toString(),
                          singleData["ourBalance"].toString(),
                          singleData["ourBalanceMonthly"].toString(),
                          singleData["monthlyReturnRate"].toString(),
                          singleData["totalReturnRate"].toString(),
                          singleData["months"].toString(),
                          index);
                    },
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          cardIndex = index;
                        });
                      },
                      enlargeCenterPage: true,
                      height: 750,
                    ),
                  ),
                  //Text(cardIndex.toString()),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 65,
                      width: 250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(3, 3),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, -3),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ],
                        color: Colors.grey[200],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
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
    String otherBankBalance,
    String otherBankCredit,
    String ourBalance,
    String ourBalanceMonthly,
    String monthlyReturnRate,
    String totalReturnRate,
    String months,
    int index,
  ) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
          color: Colors.grey[200],
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        padding:
            const EdgeInsets.only(top: 27, bottom: 60, left: 27, right: 27),
        //width: 360.w,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 207,
                child: Text(
                  textAlign: TextAlign.center,
                  productTitle,
                  style: black21,
                ),
              ),
              const Spacer(flex: 6),
              const Text(
                "Toplam Getiri Oranı",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(flex: 2),
              Text(
                monthlyReturnRate,
                style: black21,
              ),
              const Spacer(flex: 5),
              Text(
                "Vade Sonu Net Bakiye",
                style: black17,
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: 220,
                child: Text(
                  textAlign: TextAlign.center,
                  ourBalance,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 31,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(flex: 5),
              const Divider(
                color: Colors.black,
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
              const Spacer(flex: 5),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Vade Sonu Net Bakiye",
                      style: black15,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    ourBalance,
                    style: black15,
                  ),
                ],
              ),
              const Spacer(flex: 4),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Akbank'ta Vade Sonu Net Bakiye",
                      style: black15,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    otherBankBalance,
                    style: black15,
                  ),
                ],
              ),
              const Spacer(flex: 4),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      "Akbank'ta Kredi Maliyeti",
                      style: black15,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    otherBankCredit,
                    style: black15,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
