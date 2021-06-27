import 'package:flutter/material.dart';
import 'package:money2/money2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourBalance extends StatelessWidget {
  const YourBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _usdSymbol = Currency.create('USD', 1).symbol;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Your balance',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400)),
      const SizedBox(height: 5),
      Row(children: [
        Text('$_usdSymbol 7,896',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25.sp)),
        Expanded(
            child: Container(
          alignment: Alignment.centerRight,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFF363339)),
            width: 32.w,
            height: 32.w,
            child: Icon(Icons.search, color: Colors.white, size: 16.w),
          ),
        ))
      ]),
    ]);
  }
}
