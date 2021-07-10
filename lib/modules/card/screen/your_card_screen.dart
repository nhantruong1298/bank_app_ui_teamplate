import 'package:bank_app/modules/card/widgets/detail_card.dart';
import 'package:bank_app/modules/card/widgets/filter_card.dart';
import 'package:bank_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourCardScreen extends StatefulWidget {
  const YourCardScreen({Key? key}) : super(key: key);

  @override
  _YourCardScreenState createState() => _YourCardScreenState();
}

class _YourCardScreenState extends State<YourCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SizedBox(
            height: ScreenUtil().screenHeight,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 24.h),
              const DetailCard(),
              SizedBox(height: 80.h),
              Expanded(
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xFF252525),
                              Colors.black54,
                              Color(0xFF252525),
                            ]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Transactions',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  color: Colors.white,
                                )),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 34.h,
                                width: 82.w,
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40)),
                                child: InkWell(
                                  onTap: showFilter,
                                  child: Row(children: [
                                    Text('Filter',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        )),
                                    const SizedBox(width: 5),
                                    Icon(Icons.expand_more,
                                        size: 14.sp, color: Colors.white)
                                  ]),
                                ),
                              ),
                            ))
                          ]),
                          SizedBox(height: 24.h),
                          Text('Today',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                              )),
                          SizedBox(height: 17.h),
                          Row(children: [
                            Container(
                              width: 32.r,
                              height: 32.r,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2FE8D),
                                  shape: BoxShape.circle),
                              child: Icon(CupertinoIcons.arrow_down_to_line_alt,
                                  color: Colors.black, size: 13.w),
                            ),
                            SizedBox(width: 16.w),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Transfer',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500)),
                                  Text('Incoming transfer',
                                      style: TextStyle(
                                          color: Color(0xFF79767D),
                                          fontSize: 14.sp))
                                ]),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('+ ${Utils.usdSymbol}3,110',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ))
                          ]),
                          SizedBox(height: 20.h),
                          Row(children: [
                            Container(
                              width: 32.r,
                              height: 32.r,
                              decoration: BoxDecoration(
                                  color: Color(0xFFB2D0CE),
                                  shape: BoxShape.circle),
                              child: Icon(CupertinoIcons.arrow_up_to_line_alt,
                                  color: Colors.black, size: 13.w),
                            ),
                            SizedBox(width: 16.w),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Health',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500)),
                                  Text('Pharmacy',
                                      style: TextStyle(
                                          color: Color(0xFF79767D),
                                          fontSize: 14.sp))
                                ]),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('- ${Utils.usdSymbol}312,9',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ))
                          ]),
                          SizedBox(height: 35.h),
                          //////////////////////June 13TH
                          Text('June 13th',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                              )),
                          SizedBox(height: 17.h),
                          Row(children: [
                            Container(
                              width: 32.r,
                              height: 32.r,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2FE8D),
                                  shape: BoxShape.circle),
                              child: Icon(CupertinoIcons.arrow_down_to_line_alt,
                                  color: Colors.black, size: 13.w),
                            ),
                            SizedBox(width: 16.w),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Transfer',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500)),
                                  Text('Incoming transfer',
                                      style: TextStyle(
                                          color: Color(0xFF79767D),
                                          fontSize: 14.sp))
                                ]),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('+ ${Utils.usdSymbol}3,110',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ))
                          ]),
                          SizedBox(height: 20.h),
                          Row(children: [
                            Container(
                              width: 32.r,
                              height: 32.r,
                              decoration: BoxDecoration(
                                  color: Color(0xFFB2D0CE),
                                  shape: BoxShape.circle),
                              child: Icon(CupertinoIcons.arrow_up_to_line_alt,
                                  color: Colors.black, size: 13.w),
                            ),
                            SizedBox(width: 16.w),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Health',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500)),
                                  Text('Pharmacy',
                                      style: TextStyle(
                                          color: Color(0xFF79767D),
                                          fontSize: 14.sp))
                                ]),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('- ${Utils.usdSymbol}312,9',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ))
                          ]),
                        ])),
              )
            ]),
          ),
        ));
  }

  void showFilter() {
    showModalBottomSheet(
        context: context,
        barrierColor: Colors.black.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        builder: (_) {
          return FilterCard();
        });
  }
}
