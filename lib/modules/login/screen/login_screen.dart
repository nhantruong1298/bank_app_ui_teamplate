import 'dart:io';

import 'package:bank_app/modules/auth/screen/auth_screen.dart';
import 'package:bank_app/modules/login/widgets/appbar_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bank_app/modules/login/widgets/button_login.dart';
import 'package:bank_app/modules/login/widgets/button_register.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBarLogin(),
        body: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 84.h),
                    width: 100.w,
                    height: 30.h,
                    child: Image.asset('assets/images/logo.png',
                        fit: BoxFit.contain)),
                ButtonLogin(login),
                ButtonRegister(register)
              ],
            ),
          ),
        ));
  }

  void login() async {
    // Get.to(() => AuthScreen());
  }

  void register() {}
}
