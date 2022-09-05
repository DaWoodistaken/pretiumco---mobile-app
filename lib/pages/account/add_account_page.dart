import 'package:flutter/material.dart';
import 'package:pretiumco/design_patterns.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAccountPage extends StatefulWidget {
  const AddAccountPage({Key? key}) : super(key: key);

  @override
  State<AddAccountPage> createState() => _AddAccountPageState();
}

class _AddAccountPageState extends State<AddAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: lightGreen,
        ),
        backgroundColor: cream,
        elevation: 0,
      ),
      backgroundColor: cream,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 40.h),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Banka Hesap Ekle",
                    style: darkBlue29,
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Hesap Tipi",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Hesap Sahibinin Adı",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Hesap Numarası",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Banka Para Birimi",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Banka Adı",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "IBAN Numarası",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: darkBlue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      hintText: "Hesabın Etiketi (İsteğe Bağlı)",
                      hintStyle: style16,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: green,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 14.h),
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
        ),
      ),
    );
  }
}
