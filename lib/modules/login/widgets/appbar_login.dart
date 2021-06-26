import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarLogin extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  AppBarLogin({Key? key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: SizedBox(
              height: 21.h,
              width: 72.w,
              child:
                  Image.asset('assets/images/logo.png', fit: BoxFit.contain)),
          actions: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF363339),
              ),
              child: Icon(Icons.more_vert, size: 15.w),
            ),
          ]),
      preferredSize: Size.fromHeight(50),
    );
  }
}
