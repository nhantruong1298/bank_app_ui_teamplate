import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarLogin extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final bool debugMode;
  AppBarLogin({Key? key, this.debugMode = false})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        leading: debugMode
            ? CircleAvatar(
                backgroundColor: const Color(0xFFFCFFDF),
                backgroundImage: AssetImage('assets/images/avatar.png'),
              )
            : Container(),
        centerTitle: true,
        title: SizedBox(
            height: 21.h,
            width: 72.w,
            child: Image.asset('assets/images/logo.png', fit: BoxFit.contain)),
        actions: [
          debugMode
              ? Container()
              : Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF363339),
                  ),
                  child: const Icon(Icons.more_vert, size: 15),
                ),
        ]);
  }
}
