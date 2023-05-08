import 'package:bank_app/resources/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterTransactionView extends StatelessWidget {
  const FilterTransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.w),
      padding: EdgeInsets.all(25.w),
      height: ScreenUtil().screenHeight / 2,
      decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius)),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Transfers to cards and \n accounts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.sp,
              )),
          SizedBox(height: 24.h),
          Row(children: [
            Container(
              width: 32.r,
              height: 32.r,
              decoration: BoxDecoration(
                  color: Color(0xFFF2FE8D), shape: BoxShape.circle),
              child: Icon(Icons.vertical_align_bottom,
                  color: Colors.black, size: 16.w),
            ),
            SizedBox(width: 16.w),
            Text('External transfers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500)),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 24.r,
                height: 24.r,
                child: Icon(Icons.check, size: 15, color: Colors.black),
                decoration: BoxDecoration(
                    color: const Color(0xFFB2D0CE),
                    borderRadius: BorderRadius.circular(6)),
              ),
            ))
          ]),
          SizedBox(height: 12.h),
          Row(children: [
            Container(
              width: 32.r,
              height: 32.r,
              decoration: BoxDecoration(
                  color: Color(0xFFB2D0CE), shape: BoxShape.circle),
              child: Icon(Icons.vertical_align_top,
                  color: Colors.black, size: 16.w),
            ),
            SizedBox(width: 16.w),
            Text('Between my accounts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500)),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 24.r,
                height: 24.r,
                child: Icon(Icons.check, size: 15, color: Colors.black),
                decoration: BoxDecoration(
                    color: const Color(0xFFB2D0CE),
                    borderRadius: BorderRadius.circular(6)),
              ),
            ))
          ]),
          SizedBox(height: 40.h),
          Text('Cards',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.sp,
              )),
          SizedBox(height: 24.h),
          Row(children: [
            Container(
              width: 35.r,
              height: 25.r,
              child: Stack(
                children: [
                  Image.asset('assets/images/card_mini.png',
                      fit: BoxFit.contain),
                  Positioned(
                      left: 5,
                      child: Image.asset('assets/images/logo_visa.png',
                          fit: BoxFit.contain,
                          color: Color(0xFFA3D4D1),
                          width: 10,
                          height: 10)),
                  Positioned(
                      left: 5,
                      bottom: 5,
                      child: Image.asset('assets/images/chip.png',
                          width: 5, height: 7))
                ],
              ),
            ),
            SizedBox(width: 14.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Visa',
                    style: TextStyle(
                        color: Color(0xFF79767D),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500)),
                Text('**6917',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 24.r,
                height: 24.r,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
              ),
            ))
          ]),
          SizedBox(height: 12.h),
          Row(children: [
            Container(
              width: 35.r,
              height: 25.r,
              child: Stack(
                children: [
                  Image.asset('assets/images/card_mini.png',
                      fit: BoxFit.contain),
                  Positioned(
                      left: 5,
                      child: Image.asset('assets/images/logo_visa.png',
                          fit: BoxFit.contain,
                          color: Color(0xFFA3D4D1),
                          width: 10,
                          height: 10)),
                  Positioned(
                      left: 5,
                      bottom: 5,
                      child: Image.asset('assets/images/chip.png',
                          width: 5, height: 7))
                ],
              ),
            ),
            SizedBox(width: 14.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Visa',
                    style: TextStyle(
                        color: Color(0xFF79767D),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500)),
                Text('**4552',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 24.r,
                height: 24.r,
                child: Icon(Icons.check, size: 15, color: Colors.black),
                decoration: BoxDecoration(
                    color: const Color(0xFFB2D0CE),
                    borderRadius:
                        BorderRadius.circular(AppDimensions.defaultXXSRadius)),
              ),
            ))
          ])
        ]),
      ),
    );
  }
}
