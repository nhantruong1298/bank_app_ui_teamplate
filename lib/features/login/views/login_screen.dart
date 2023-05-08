import 'package:bank_app/features/dashboard/views/dashboard_screen.dart';
import 'package:bank_app/features/login/views/widgets/button_register.dart';
import 'package:bank_app/widgets/layouts/basic_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bank_app/features/login/views/widgets/button_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicLayout(
        appBar: _buildAppBar(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 80.h),
                  width: 100.w,
                  height: 30.h,
                  child: Image.asset('assets/images/logo.png',
                      fit: BoxFit.contain)),
              ButtonLogin(goToDashBoard),
              ButtonRegister(goToDashBoard)
            ],
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: SizedBox(
            height: 20.h,
            width: 70.w,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            )),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF363339),
            ),
            child: Icon(Icons.more_vert, size: 15),
          )
        ]);
  }

  void goToDashBoard() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const DashboardScreen(),
      ),
    );
  }
}
