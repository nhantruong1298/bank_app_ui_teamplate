import 'package:bank_app/modules/home/widgets/currencies_and_metal.dart';
import 'package:bank_app/modules/home/widgets/finance.dart';
import 'package:bank_app/modules/home/widgets/list_visa.dart';
import 'package:bank_app/modules/home/widgets/loans_info.dart';
import 'package:bank_app/modules/home/widgets/your_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      //physics: const BouncingScrollPhysics(),
      child: SizedBox(
          width: size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 32.h),
                    const YourBalance(),
                    SizedBox(height: 28.h),
                    const ListVisa(),
                    const Finance(),
                    SizedBox(height: 36.h),
                  ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
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
                    const CurrentLoans(),
                    SizedBox(height: 36.h),
                    const CurrenciesAndMetal()
                  ]),
            )
          ])),
    );
  }
}
