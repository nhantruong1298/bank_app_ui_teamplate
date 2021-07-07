import 'package:bank_app/modules/home/widgets/card_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListVisa extends StatefulWidget {
  const ListVisa({Key? key}) : super(key: key);

  @override
  _ListVisaState createState() => _ListVisaState();
}

class _ListVisaState extends State<ListVisa> {
  final _listColors = [
    [Color(0xFFEAEAEA), Color(0xFFB2D0CE).withOpacity(0.85)],
    [Color(0xFFFCFFDF), Color(0xFFF1FE87).withOpacity(0.85)],
    [Color(0xFFF2EFF4), Color(0xFFB8A9C6).withOpacity(0.85)]
  ];
  final _listInfo = const [
    {'type': 'Salary', 'balance': '2,230', 'id': '6917'},
    {'type': 'Savings account', 'balance': '5,566', 'id': '4552'},
    {'type': 'Salary', 'balance': '2,230', 'id': '6917'}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: ScreenUtil().screenWidth,
      child: ListView.builder(
          itemCount: _listColors.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return CardOverview(
              onTap: () {},
              colors: _listColors[index],
              balance: _listInfo[index]['balance'],
              id: _listInfo[index]['id'],
              type: _listInfo[index]['type'],
            );
          }),
    );
  }
}
