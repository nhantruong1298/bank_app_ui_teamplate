import 'package:bank_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class YourCardScreen extends StatefulWidget {
  const YourCardScreen({Key? key}) : super(key: key);

  @override
  _YourCardScreenState createState() => _YourCardScreenState();
}

class _YourCardScreenState extends State<YourCardScreen> {
  final _screenSize = ScreenUtil();
  final Widget _rowLens = Row(
    children: [
      Icon(Icons.lens, size: 10, color: Colors.black),
      Icon(Icons.lens, size: 10, color: Colors.black),
      Icon(Icons.lens, size: 10, color: Colors.black),
      Icon(Icons.lens, size: 10, color: Colors.black)
    ],
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          // leading: Container(
          //   width: 25.r,
          //   height: 25.r,
          //   color: Colors.red,
          //   child: MaterialButton(
          //     shape: CircleBorder(),
          //     color: Color(0xFF252525),
          //     child: Icon(
          //       Icons.navigate_before,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          title: Text('Your cards',
              style:
                  TextStyle(fontSize: 16.sp, color: const Color(0xFFFFFFFF))),
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 24.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32.w),
              width: _screenSize.screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFF5FFA8), Color(0xFFEDFC74)])),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 40.w,
                            height: 30.h,
                            child: Image.asset('assets/images/logo_visa.png',
                                fit: BoxFit.contain)),
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerRight,
                          child: Text('${Utils.usdSymbol} 5,5566.55',
                              style: TextStyle(
                                  color: Color(0xFF272A32),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold)),
                        ))
                      ],
                    ),
                    SizedBox(height: 35.h),
                    Row(children: [
                      Container(
                        width: 20.w,
                        height: 30.h,
                        child: Image.asset('assets/images/chip.png'),
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.bottomRight,
                              child: Text('valid thru'.toUpperCase(),
                                  style: TextStyle(
                                      color: Color(0xFF272A32).withOpacity(0.4),
                                      fontSize: 10.sp))))
                    ]),
                    Row(children: [
                      _rowLens,
                      const SizedBox(width: 5),
                      _rowLens,
                      const SizedBox(width: 5),
                      _rowLens,
                      const SizedBox(width: 5),
                      Text('4552',
                          style: TextStyle(
                              color: Color(0xFF272A32),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('12/22',
                                  style: TextStyle(
                                      color: Color(0xFF272A32),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold))))
                    ]),
                    SizedBox(height: 20.h),
                    Text('Margo Lepski'.toUpperCase(),
                        style: TextStyle(
                            color: Color(0xFF272A32).withOpacity(0.4),
                            fontSize: 10.sp))
                  ]),
            ),
            SizedBox(height: 80.h)
          ]),
        ));
  }
}
