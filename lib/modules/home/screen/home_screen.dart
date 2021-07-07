import 'package:bank_app/modules/auth/screen/auth_screen.dart';
import 'package:bank_app/modules/card/screen/your_card_screen.dart';
import 'package:bank_app/modules/chat/screen/chat_screen.dart';
import 'package:bank_app/modules/history/screen/history_screen.dart';
import 'package:bank_app/modules/home/screen/home_page.dart';
import 'package:bank_app/modules/home/widgets/custom_navigationbar.dart';
import 'package:bank_app/modules/shop/screen/shop_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback updateAppBar;
  const HomeScreen({required this.updateAppBar, Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 5.obs;
  bool _isDemoMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CustomNavigationBar(
        onChangedIndex: (newIndex) {
          if (_isDemoMode) {
            _currentIndex.value = newIndex;
          } else {
            showBottom(newIndex);
          }
        },
      ),
      body: Obx(() => IndexedStack(
            alignment: Alignment.bottomCenter,
            index: _currentIndex.value,
            children: [
              HomePage(),
              ShopScreen(),
              YourCardScreen(),
              ChatScreen(),
              HistoryScreen(),
              AuthScreen()
            ],
          )),
    );
  }

  void showBottom(int index) {
    showModalBottomSheet(
        useRootNavigator: true,
        barrierColor: Colors.black.withOpacity(0.8),
        backgroundColor: Colors.black,
        context: context,
        builder: (_) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GestureDetector(
              onTap: () {
                Get.back();
                _isDemoMode = true;
                _currentIndex.value = index;
                widget.updateAppBar();
              },
              child: Container(
                height: 68.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Demo mode',
                        style: TextStyle(
                            fontSize: 15.sp, color: const Color(0xFF1E2121))),
                    Icon(Icons.navigate_next,
                        size: 18.w, color: const Color(0xFFB2D0CE))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
