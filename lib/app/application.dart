import 'package:bank_app/features/login/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application extends StatelessWidget {
  const Application();
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   

    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Finance App',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => LoginScreen(),
          },
        );
      },
    );
  }
}
