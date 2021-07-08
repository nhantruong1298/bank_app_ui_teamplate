import 'package:bank_app/modules/budget/widgets/line_chart_data.dart';
import 'package:bank_app/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final _screenUtil = ScreenUtil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF433D48).withOpacity(0.22),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            width: _screenUtil.screenWidth,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Text('${Utils.usdSymbol}1,345',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600)),
                Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('June,2020',
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.sp))))
              ]),
              SizedBox(height: 4.h),
              Text('September forecast ${Utils.usdSymbol}2,010',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp))
            ]),
          ),
          SizedBox(height: 54.h),
          SizedBox(
            width: _screenUtil.screenWidth,
            height: 250.h,
            child: LineChart(lineChartData()),
          ),
          SizedBox(height: 70.h),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
              decoration: BoxDecoration(
                  color: Color(0xFF282729).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(26)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('June 15, 2020',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 21.sp)),
                    SizedBox(height: 24.h),
                    Row(children: [
                      Image.asset(
                        'assets/images/webflow.png',
                        width: 32.r,
                        height: 32.r,
                      ),
                      SizedBox(width: 16.w),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Webflow',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp)),
                            const SizedBox(height: 3),
                            Text('Outcoming transfer',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xFF79767D)))
                          ]),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('- ${Utils.usdSymbol}45',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp)),
                      ))
                    ]),
                    SizedBox(height: 20.h),
                    Row(children: [
                      Image.asset(
                        'assets/images/sketch.png',
                        width: 32.r,
                        height: 32.r,
                      ),
                      SizedBox(width: 16.w),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sketch',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp)),
                            const SizedBox(height: 3),
                            Text('Annual withdrawal of funds',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xFF79767D)))
                          ]),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('- ${Utils.usdSymbol}79',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp)),
                      ))
                    ]),
                    SizedBox(height: 20.h),
                    Row(children: [
                      Image.asset(
                        'assets/images/youtube.png',
                        width: 32.r,
                        height: 32.r,
                      ),
                      SizedBox(width: 16.w),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Youtube',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp)),
                            const SizedBox(height: 3),
                            Text('Annual withdrawal of funds',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xFF79767D)))
                          ]),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('- ${Utils.usdSymbol}15',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp)),
                      ))
                    ]),
                    SizedBox(height: 20.h),
                    Row(children: [
                      Image.asset(
                        'assets/images/unplash.png',
                        width: 32.r,
                        height: 32.r,
                      ),
                      SizedBox(width: 16.w),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Unplash',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp)),
                            const SizedBox(height: 3),
                            Text('Annual withdrawal of funds',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xFF79767D)))
                          ]),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('- ${Utils.usdSymbol}9',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp)),
                      ))
                    ]),
                  ])),
          SizedBox(height: 20.h)
        ]),
      ),
    );
  }
}
