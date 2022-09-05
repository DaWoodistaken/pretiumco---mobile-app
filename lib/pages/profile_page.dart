// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pretiumco/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretiumco/pages/account/add_account_page.dart';
import 'package:pretiumco/pages/account/change_email_page.dart';
import 'package:pretiumco/pages/account/change_password_page.dart';
import 'package:pretiumco/pages/account/twofa_page.dart';
import 'package:pretiumco/design_patterns.dart';

bool recordDailyActivity = true;
bool sendEmailStrangeActivity = true;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          iconTheme: IconThemeData(color: darkGreen),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
            )
          ],
          title: Text(
            "Profil Bilgisi",
            style: black23,
          ),
          centerTitle: true,
        ),
        drawer: const NavigationDrawer(),
        backgroundColor: wcream,
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                indicatorColor: darkGreen,
                indicatorWeight: 4.sp,
                labelColor: darkGreen,
                unselectedLabelColor: darkGreen,
                labelStyle: tabBarTS,
                unselectedLabelStyle: unselectedTabBarTS,
                tabs: const [
                  Tab(text: "Profil"),
                  Tab(text: "Hesaplar"),
                  Tab(text: "Güvenlik"),
                  Tab(text: "Aktivite"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 40.h),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: wcream2,
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.r)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.w, vertical: 36.h),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Adı ve Soyadı", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("Batuhan Şahin", style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Ad Tercihi", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("Şahin", style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("E-posta", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("batuhansahin@pretium.co",
                                      style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Telefon Numarası", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("+90 589 589 58 59",
                                      style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Cinsiyet", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("Erkek", style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Doğum Tarihi", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("05.07.1993", style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Ülke", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text("Türkiye", style: profileInfoTS2),
                                  SizedBox(height: 25.h),
                                  Text("Adres", style: black17400),
                                  SizedBox(height: 10.h),
                                  Text(
                                      "Kaput Mahallesi, Atatürk Caddesi, 89. Sokak, 6/3, Şişli/İstanbul",
                                      style: profileInfoTS2),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                    SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 30.h),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: wcream2,
                                      width: 2,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.w, vertical: 36.h),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Banka Hesabı (AC-0028-4654)",
                                          style: black17400),
                                      SizedBox(height: 10.h),
                                      Text(
                                          "Batuhan Şahin Ziraat Bankası (XXXX)-1326",
                                          style: black17400),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: wcream2,
                                      width: 2,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.w, vertical: 36.h),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("HESAP EKLE", style: black17400),
                                      SizedBox(height: 10.h),
                                      Icon(Icons.add_box, size: 60.h)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: wcream2,
                                      width: 2,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.w, vertical: 36.h),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("HESAP EKLE", style: black17400),
                                      SizedBox(height: 10.h),
                                      Icon(Icons.add_box, size: 60.h)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  minLeadingWidth: 30.w,
                                  leading: Icon(
                                    Icons.dangerous,
                                    color: red,
                                  ),
                                  title: Text(
                                    "Herhangi bir sorunuz varsa lütfen bizimle iletişime geçmekten çekinmeyin.",
                                    style: TextStyle(
                                      color: red,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50.h),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddAccountPage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: darkGreen,
                                    elevation: 0,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.w, vertical: 15.h),
                                  ),
                                  child: Text(
                                    "Hesap Ekle",
                                    style: white21,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 30.h),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.w, vertical: 36.h),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 220.w,
                                            child: Text(
                                              "Etkinlik Günlüklerimi Kaydet",
                                              style: activityTS1,
                                            ),
                                          ),
                                          Spacer(),
                                          Switch.adaptive(
                                            activeColor: darkGreen,
                                            value: recordDailyActivity,
                                            onChanged: ((value) {
                                              setState(() {
                                                recordDailyActivity = value;
                                              });
                                            }),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: 280.w,
                                        child: Text(
                                          "Algılanan olağan dışı etkinlik dahil tüm etkinlikleri etkinlik günlükleri'ne kaydedin.",
                                          style: activityTS2,
                                        ),
                                      ),
                                      SizedBox(height: 40.h),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 220.w,
                                            child: Text(
                                              "Olağan Dışı Bir Etkinlikle Karşılaşırsanız Bana E-Posta Gönderin",
                                              style: activityTS1,
                                            ),
                                          ),
                                          Spacer(),
                                          Switch.adaptive(
                                            activeColor: darkGreen,
                                            value: sendEmailStrangeActivity,
                                            onChanged: ((value) {
                                              setState(() {
                                                sendEmailStrangeActivity =
                                                    value;
                                              });
                                            }),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: 280.w,
                                        child: Text(
                                          "Geçersiz oturum açma etkinliğiyle karşılaştığınızda e-posta bildirimi alacaksınız.",
                                          style: activityTS2,
                                        ),
                                      ),
                                      SizedBox(height: 40.h),
                                      Align(
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ChangeEmailPage()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: darkGreen,
                                            elevation: 0,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30.w,
                                                vertical: 12.h),
                                          ),
                                          child: Text(
                                            "E-Posta Adresini Değiştir",
                                            style: white21,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: 227.w,
                                        child: Text(
                                          "Mevcut e-posta adresinizi yeni e-posta adresiyle güncelleyin.",
                                          style: activityTS2,
                                        ),
                                      ),
                                      SizedBox(height: 40.h),
                                      Align(
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ChangePasswordPage()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: darkGreen,
                                            elevation: 0,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 84.w,
                                                vertical: 12.h),
                                          ),
                                          child: Text(
                                            "Şifre Değiştir",
                                            style: white21,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: 227.w,
                                        child: Text(
                                          "Hesabınızı korumak için benzersiz bir şifre belirleyin.",
                                          style: activityTS2,
                                        ),
                                      ),
                                      SizedBox(height: 40.h),
                                      Align(
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const TwoFAPage()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: darkGreen,
                                            elevation: 0,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32.w,
                                                vertical: 12.h),
                                          ),
                                          child: Text(
                                            "2FA Doğrulamasını Etkinleştir",
                                            style: white21,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: 259.w,
                                        child: Text(
                                          "Hesabınızı 2FA güvenliği ile koruyun. Etkinleştirildiğinde, yalnızca şifrenizi değil, aynı zamanda cep telefonunuzu kullanarak özel bir kodu da girmeniz gerekecektir.",
                                          style: activityTS2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                    SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 30.h),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: wcream2,
                                      width: 2,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.r)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.w, vertical: 36.h),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Hesabınızdaki Etkinlik",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 70.h),
                                      Text(
                                        "Son 20 günlük giriş etkinliğiniz.",
                                      ),
                                      SizedBox(height: 40.h),
                                      Text(
                                        "Chrome",
                                        style: activityTS1,
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        children: [
                                          Text(
                                            "Tarih",
                                            style: activityTS2,
                                          ),
                                          Spacer(),
                                          Text(
                                            "02 Ağustos 2022, 19:30:10",
                                            style: activityTS2,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        children: [
                                          Text(
                                            "IP",
                                            style: activityTS2,
                                          ),
                                          Spacer(),
                                          Text(
                                            "159.146.70.235",
                                            style: activityTS2,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 150.h),
                                      Align(
                                        alignment: Alignment.center,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            primary: red,
                                            elevation: 0,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 62.w,
                                                vertical: 12.h),
                                          ),
                                          child: Text(
                                            "Günlüğü Temizle",
                                            style: white21,
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
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
