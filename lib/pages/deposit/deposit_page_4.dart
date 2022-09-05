import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:pretiumco/main.dart';
import 'package:pretiumco/pages/dashboard_page.dart';
import 'package:pretiumco/pages/profile_page.dart';

class DepositPage4 extends StatefulWidget {
  DepositPage4({Key? key}) : super(key: key);

  @override
  State<DepositPage4> createState() => _DepositPage4State();
}

class _DepositPage4State extends State<DepositPage4> {
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
          "Paranızı Aktarın",
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
                    "4/4",
                    style: black23,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    textAlign: TextAlign.center,
                    "Siparişiniz alındı.",
                    style: black29,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 324.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Para yatırma işleminizi tamamlamak için lütfen 8,105.00 TRY miktarında ödemeyi banka aracılığıyla gönderin.",
                      style: black17400,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: 292.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Size aşağıdaki ödeme bilgilerini içeren bir e-posta gönderdik. Ödeme bilgileriyle ilgili herhangi bir sorunuz varsa lütfen bizimle iletişime geçin.",
                      style: TextStyle(
                        color: darkBlue,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    padding: EdgeInsets.only(
                        top: 27.h, bottom: 50.h, left: 27.w, right: 27.w),
                    color: green,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Yatırılacak tutar",
                            style: white19,
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
                          SizedBox(height: 40.h),
                          Text(
                            "Referans",
                            style: white19,
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "TNX93129307",
                            style: white19,
                          ),
                          SizedBox(height: 35.h),
                          Divider(
                            color: white,
                            thickness: 1.sp,
                            endIndent: 40.w,
                            indent: 40.w,
                          ),
                          SizedBox(height: 35.h),
                          Text(
                            "İletişim Adı",
                            style: white19,
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Batuhan Şahin",
                            style: white19,
                          ),
                          SizedBox(height: 40.h),
                          Text(
                            "Telefon Numarası",
                            style: white19,
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "+90 559 599 59 59",
                            style: white19,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    minLeadingWidth: 30.w,
                    leading: Icon(
                      Icons.dangerous,
                      color: lightGreen,
                    ),
                    title: Text(
                      "Ödemenin alındığını onayladığımızda hesabınıza yatırılacaktır.",
                      style: darkBlue11,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    minLeadingWidth: 30.w,
                    leading: Icon(
                      Icons.dangerous,
                      color: lightGreen,
                    ),
                    title: Text(
                      "Gönderdiğiniz tutarın, bankanız tarafından yapılan bu tür tüm değişiklikleri karşılamaya yeterli olduğundan emin olun.",
                      style: darkBlue11,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    minLeadingWidth: 30.w,
                    leading: Icon(
                      Icons.dangerous,
                      color: red,
                    ),
                    title: Text(
                      "Bu sipariş iptal edilmeyecekse lütfen ödemenizi 3 gün içerisinde yapın.",
                      style: darkBlue11,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: green,
                      padding: EdgeInsets.symmetric(
                          horizontal: 52.w, vertical: 12.h),
                    ),
                    child: Text(
                      "Hesap Özetine Dön",
                      style: white17,
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
