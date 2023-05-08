import 'package:bank_app/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLogin extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonLogin(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        alignment: Alignment.center,
        width: ScreenUtil().screenWidth,
        height: 48.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.8],
                colors: const [Color(0xFFFCFFDF), Color(0xFFF2FE8D)]),
            borderRadius: BorderRadius.circular(AppDimensions.defaultXXLRadius)),
        child: Text('Log in',
            style: TextStyle(fontSize: 15.sp, color: const Color(0xFF272A32))),
      ),
    );
  }
}
