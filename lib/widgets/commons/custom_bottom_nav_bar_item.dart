import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  CustomBottomNavBarItem({
    required String iconPath,
    String label = '',
    Color backgroundColor = Colors.black,
  }) : super(
            icon: Image.asset(
              iconPath,
              width: 40.w,
              height: 40.h,
              color: Colors.white,
            ),
            activeIcon: Image.asset(
              iconPath,
              width: 40.w,
              height: 40.h,
              color: Colors.yellow,
            ),
            label: label,
            backgroundColor: backgroundColor);
}
