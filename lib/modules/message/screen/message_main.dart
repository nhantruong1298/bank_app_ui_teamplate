import 'package:bank_app/modules/message/widgets/dialogues.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageMain extends StatelessWidget {
  const MessageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 32.h),
          Container(height: 280.h, child: Dialogues()),
          Expanded(
            child: Container(
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                  color: const Color(0xFF252525).withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Messages',
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    SizedBox(height: 23.h),
                    Expanded(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [Row()],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
