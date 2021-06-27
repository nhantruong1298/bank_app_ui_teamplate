import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();
  final _greyColor = const Color(0xFF5C5762);
  final _iconCalcle = Icon(
    Icons.backspace_outlined,
    size: 20.w,
    color: Colors.white,
  );
  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: PasscodeScreen(
          title: Text('Enter Passcode',
              style: TextStyle(fontSize: 17.sp, color: Colors.white)),
          circleUIConfig: CircleUIConfig(
              circleSize: 10.w, borderColor: _greyColor, fillColor: _greyColor),
          keyboardUIConfig: KeyboardUIConfig(
              digitTextStyle: TextStyle(color: Colors.white, fontSize: 40.sp),
              digitFillColor: Color(0xFF363339),
              primaryColor: Color(0xFF363339)),
          bottomWidget: Container(
            margin: EdgeInsets.only(top: 36.h),
            child: InkWell(
              onTap: () {},
              child: Text('Can not login?',
                  style: TextStyle(
                      fontSize: 13.sp, color: const Color(0xFFF2FE8D))),
            ),
          ),
          passwordEnteredCallback: (text) {
            bool isValid = '123456' == text;
            _verificationNotifier.add(isValid);
          },
          cancelButton: InkWell(child: _iconCalcle),
          deleteButton: InkWell(child: _iconCalcle),
          shouldTriggerVerification: _verificationNotifier.stream,
        ));
  }
}
