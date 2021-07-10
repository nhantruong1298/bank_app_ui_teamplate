import 'package:bank_app/modules/home/widgets/finance_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dialogues extends StatefulWidget {
  const Dialogues({Key? key}) : super(key: key);

  @override
  _DialoguesState createState() => _DialoguesState();
}

class _DialoguesState extends State<Dialogues> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Dialogues',
            style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        SizedBox(height: 18.h),
        Row(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFF2FE8D)),
              child: Text('Actions',
                  style: TextStyle(color: Colors.black, fontSize: 12.sp))),
          SizedBox(width: 12.w),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF252525)),
              child: Text('Channels',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          SizedBox(width: 12.w),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF252525)),
              child: Text('Postcards',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          Expanded(
              child: Container(
            alignment: Alignment.centerRight,
            child: Container(
              width: 40.w,
              height: 28.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF252525)),
              child: Icon(
                CupertinoIcons.slider_horizontal_3,
                size: 13.w,
                color: Colors.white,
              ),
            ),
          ))
        ]),
        SizedBox(height: 30.h),
        _ListDialogues(),
        SizedBox(height: 32.h),
      ]),
    );
  }
}

class _ListDialogues extends StatefulWidget {
  const _ListDialogues({Key? key}) : super(key: key);

  @override
  __ListDialoguesState createState() => __ListDialoguesState();
}

class __ListDialoguesState extends State<_ListDialogues> {
  List<Map<String, dynamic>> _listFinance = const [
    {
      'img': 'assets/images/icon_start.png',
      'color': Color(0xFFF2FE8D),
      'title': 'Transfer\nmoney'
    },
    {
      'img': 'assets/images/icon_budget.png',
      'color': Color(0xFFB2D0CE),
      'title': 'Lou\nBonuses'
    },
    {
      'img': 'assets/images/icon_chart.png',
      'color': Color(0xFFAA9EB7),
      'title': 'Lou\nAssets'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 130.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
              itemCount: _listFinance.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return FinanceItem(
                    img: _listFinance[index]['img'].toString(),
                    color: _listFinance[index]['color'],
                    title: _listFinance[index]['title']);
              }))
    ]);
  }
}
