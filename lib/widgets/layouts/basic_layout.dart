import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  final Widget? child;
  final AppBar? appBar;
  const BasicLayout({
    super.key,
    this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
