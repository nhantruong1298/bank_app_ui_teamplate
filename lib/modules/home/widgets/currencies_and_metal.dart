import 'package:bank_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrenciesAndMetal extends StatefulWidget {
  const CurrenciesAndMetal({Key? key}) : super(key: key);

  @override
  _CurrenciesAndMetalState createState() => _CurrenciesAndMetalState();
}

class _CurrenciesAndMetalState extends State<CurrenciesAndMetal> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Icon(Icons.expand_more, size: 11.w, color: const Color(0xFF79767D)),
        SizedBox(width: 10.w),
        Text('Currencies and metals'.toUpperCase(),
            style: TextStyle(fontSize: 10.sp, color: Colors.white)),
      ]),
      SizedBox(height: 11.h),
      const _Currencies(),
      SizedBox(height: 12.h),
      const _Metals()
    ]);
  }
}

class _Metals extends StatelessWidget {
  const _Metals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          padding: EdgeInsets.all(20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Metals',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 12.w),
                            padding: EdgeInsets.all(5),
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFB2D0CE).withOpacity(0.85),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/images/gold.png'),
                          ),
                          Container(
                            height: 20.w,
                            alignment: Alignment.bottomCenter,
                            child: Text('Gold',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp)),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8.h, right: 12.w),
                            padding: EdgeInsets.all(5),
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFB2D0CE).withOpacity(0.85),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/images/gold.png'),
                          ),
                          Container(
                            height: 20.w,
                            alignment: Alignment.bottomCenter,
                            child: Text('Silver',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp)),
                          )
                        ],
                      ),
                    ])),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Buy',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h)
                    ])),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Sell',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h)
                    ])),
          ]))
    ]);
  }
}

class _Currencies extends StatelessWidget {
  const _Currencies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          padding: EdgeInsets.all(20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Currencie',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 12.w),
                            padding: EdgeInsets.all(5),
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFB2D0CE).withOpacity(0.85),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/images/usd_symbol.png'),
                          ),
                          Container(
                            height: 20.w,
                            alignment: Alignment.bottomCenter,
                            child: Text('USD',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp)),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8.h, right: 12.w),
                            padding: EdgeInsets.all(5),
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFB2D0CE).withOpacity(0.85),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset('assets/images/eur_symbol.png'),
                          ),
                          Container(
                            height: 20.w,
                            alignment: Alignment.bottomCenter,
                            child: Text('EUR',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp)),
                          )
                        ],
                      ),
                    ])),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Buy',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h)
                    ])),
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Sell',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h),
                      Text('${Utils.usdSymbol} 78,92',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(height: 8.h)
                    ])),
          ])),
    ]);
  }
}
