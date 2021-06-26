import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  const CustomNavigationBar({this.defaultSelectedIndex = 0, Key? key})
      : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset('assets/images/Home.png')),
        Expanded(child: Image.asset('assets/images/Home.png')),
        Expanded(child: Image.asset('assets/images/Home.png')),
      ],
    );
  }
}
