import 'dart:async';

import 'package:bank_app/modules/login/widgets/appbar_login.dart';
import 'package:flutter/material.dart';
import 'package:passcode_screen/passcode_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLogin(),
      body: Container(
          child: PasscodeScreen(
        title: Text(''),
        passwordEnteredCallback: (text) {
          bool isValid = '123456' == text;
          _verificationNotifier.add(isValid);
        },
        cancelButton: InkWell(child: Icon(Icons.cancel)),
        deleteButton: InkWell(
          child: Icon(Icons.delete),
        ),
        shouldTriggerVerification: _verificationNotifier.stream,
      )),
    );
  }
}
