import 'package:bank_app/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonRegister extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonRegister(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: ScreenUtil().screenWidth,
        height: 48.h,
        decoration: BoxDecoration(
            color: const Color(0xFF363339),
            borderRadius:
                BorderRadius.circular(AppDimensions.defaultXXLRadius)),
        child: Text('Become a client of the bank',
            style: TextStyle(fontSize: 15.sp, color: const Color(0xFFFFFFFF))),
      ),
    );
  }
}
