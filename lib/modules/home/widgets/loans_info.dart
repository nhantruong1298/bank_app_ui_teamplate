import 'package:bank_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentLoans extends StatelessWidget {
  const CurrentLoans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const _LoansTitle(),
      SizedBox(height: 13.h),
      Container(
          padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(26)),
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(7.w),
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                  color: Color(0xFFB2D0CE).withOpacity(0.85),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/icon_card.png',
                  color: Colors.black),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Account N*3874825',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Text('${Utils.usdSymbol} 78,92',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)))),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Expires 12/22/2023',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFF79767D),
                                fontWeight: FontWeight.w400)),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Text('Rate 3.5%',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xFF79767D),
                                        fontWeight: FontWeight.w400)))),
                      ],
                    )
                  ]),
            )
          ])),
      SizedBox(height: 16.h),
      Container(
          padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFEAEAEA),
                    Color(0xFFB2D0CE).withOpacity(0.85)
                  ])),
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(7.w),
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                'assets/images/flash.png',
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Account N*3874825',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Text('${Utils.usdSymbol} 78,92',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)))),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Expires 12/22/2023',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFF79767D),
                                fontWeight: FontWeight.w400)),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Text('Rate 3.5%',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xFF79767D),
                                        fontWeight: FontWeight.w400)))),
                      ],
                    )
                  ]),
            )
          ]))
    ]);
  }
}

class _LoansTitle extends StatelessWidget {
  const _LoansTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.expand_more, size: 11.w, color: const Color(0xFF79767D)),
      SizedBox(width: 10.w),
      Text('Current loans'.toUpperCase(),
          style: TextStyle(fontSize: 10.sp, color: Colors.white)),
      Expanded(
          child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                    color: Color(0xFF363339),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.add, color: Colors.white, size: 12.w),
              )))
    ]);
  }
}
