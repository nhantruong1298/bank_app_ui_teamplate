import 'package:bank_app/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceWidget extends StatelessWidget {
  final String? img;
  final Color? color;
  final String? title;
  const FinanceWidget(
      {required this.img, required this.color, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.only(right: 14.w),
      width: 100.w,
      height: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xFF252525), const Color(0xFF2C2C2C)])),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 32.w,
              height: 32.w,
              padding: EdgeInsets.all(7.w),
              decoration: BoxDecoration(
                color: color?.withOpacity(0.8) ?? Colors.white,
                borderRadius:
                    BorderRadius.circular(AppDimensions.defaultSRadius),
              ),
              child: Image.asset('$img', color: const Color(0xFF252525)),
            ),
            Text('$title',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white))
          ]),
    );
  }
}
