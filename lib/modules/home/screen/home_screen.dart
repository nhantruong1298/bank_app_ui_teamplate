import 'dart:html';

import 'package:bank_app/modules/auth/screen/auth_screen.dart';
import 'package:bank_app/modules/card/screen/card_screen.dart';
import 'package:bank_app/modules/chat/screen/chat_screen.dart';
import 'package:bank_app/modules/history/screen/history_screen.dart';
import 'package:bank_app/modules/home/screen/home_page.dart';
import 'package:bank_app/modules/home/widgets/custom_navigationbar.dart';
import 'package:bank_app/modules/shop/screen/shop_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CustomNavigationBar(
        defaultSelectedIndex: 0,
      ),
      body: IndexedStack(
        alignment: Alignment.bottomCenter,
        index: _currentIndex,
        children: [
          HomePage(),
          ShopScreen(),
          CardScreen(),
          ChatScreen(),
          HistoryScreen(),
          AuthScreen()
        ],
      ),
    );
  }
}
