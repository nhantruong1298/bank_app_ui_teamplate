import 'package:bank_app/modules/home/widgets/finance_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Finance extends StatefulWidget {
  const Finance({Key? key}) : super(key: key);

  @override
  _FinanceState createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  List<Map<String, dynamic>> _listFinance = const [
    {
      'img': 'assets/images/icon_start.png',
      'color': Color(0xFFF2FE8D),
      'title': 'My bonuses'
    },
    {
      'img': 'assets/images/icon_budget.png',
      'color': Color(0xFFB2D0CE),
      'title': 'My budget'
    },
    {
      'img': 'assets/images/icon_chart.png',
      'color': Color(0xFFAA9EB7),
      'title': 'Finance analysis'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(top: 39.h, bottom: 12.h),
        child: Text('FINANCE',
            style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w500)),
      ),
      Container(
          height: 100.w,
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
