import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final VoidCallback onTap;
  final Color colorIcon;
  final String img;
  const CustomNavigationBarItem(
      {required this.onTap,
      required this.img,
      this.colorIcon = Colors.white,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(
          img,
          color: colorIcon,
          width: 40.w,
          height: 40.h,
        ));
  }
}
