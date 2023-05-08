import 'package:bank_app/features/budget/views/budget_screen.dart';
import 'package:bank_app/features/card/views/your_card_screen.dart';
import 'package:bank_app/widgets/commons/custom_bottom_nav_bar_item.dart';
import 'package:bank_app/features/message/views/message_screen.dart';
import 'package:bank_app/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final VoidCallback? updateAppBar;
  const DashboardScreen({this.updateAppBar, Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final _screens = <Widget>[
    HomeScreen(),
    BudgetScreen(),
    YourCardScreen(),
    MessageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          items: [
            CustomBottomNavBarItem(iconPath: _listBottomNavBarIcon[0]),
            CustomBottomNavBarItem(iconPath: _listBottomNavBarIcon[1]),
            CustomBottomNavBarItem(iconPath: _listBottomNavBarIcon[2]),
            CustomBottomNavBarItem(iconPath: _listBottomNavBarIcon[3]),
          ],
          currentIndex: _selectedIndex,
          onTap: (newIndex) => setState(() {
            _selectedIndex = newIndex;
          }),
        ),
        body: Center(child: _screens[_selectedIndex]));
  }

  final _listBottomNavBarIcon = const <String>[
    'assets/images/Home.png',
    'assets/images/Shop.png',
    'assets/images/Card.png',
    'assets/images/Chat.png',
  ];
}
