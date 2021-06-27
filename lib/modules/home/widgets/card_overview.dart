import 'package:flutter/material.dart';
import 'package:money2/money2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardOverview extends StatelessWidget {
  final VoidCallback onTap;
  final List<Color> colors;
  final String? type;
  final String? balance;
  final String? id;
  const CardOverview(
      {required this.onTap,
      required this.colors,
      required this.type,
      required this.balance,
      required this.id,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _usdSymbol = Currency.create('USD', 1).symbol;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18.w),
        margin: EdgeInsets.only(right: 13.w),
        width: 148.w,
        height: 170.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: colors)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 40.w,
                height: 20.h,
                child: Image.asset('assets/images/logo_visa.png',
                    color: Colors.black, fit: BoxFit.contain),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(type.toString(),
                    style: TextStyle(
                        fontSize: 11.sp, fontWeight: FontWeight.w500)),
                Text('$_usdSymbol $balance',
                    style: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.w700)),
              ]),
              Text('** $id',
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500))
            ]),
      ),
    );
  }
}
