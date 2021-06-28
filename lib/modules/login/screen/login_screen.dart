import 'package:bank_app/modules/home/screen/home_screen.dart';
import 'package:bank_app/modules/login/bloc/login_bloc.dart';
import 'package:bank_app/modules/login/bloc/login_event.dart';
import 'package:bank_app/modules/login/bloc/login_state.dart';
import 'package:bank_app/modules/login/widgets/appbar_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bank_app/modules/login/widgets/button_login.dart';
import 'package:bank_app/modules/login/widgets/button_register.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginBloc = LoginBloc(LoginInitState());
  var _debugMode = false.obs;
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Obx(() => _debugMode.value
                ? Container(
                    padding: EdgeInsets.only(left: 18.w),
                    alignment: Alignment.centerLeft,
                    width: 30.w,
                    height: 35.h,
                    child: CircleAvatar(
                      radius: 16.w,
                      backgroundColor: const Color(0xFFF1FE87),
                      backgroundImage: AssetImage(
                        'assets/images/avatar.png',
                      ),
                      //backgroundImage: AssetImage('),
                    ),
                  )
                : Container()),
            centerTitle: true,
            title: SizedBox(
                height: 21.h,
                width: 72.w,
                child:
                    Image.asset('assets/images/logo.png', fit: BoxFit.contain)),
            actions: [
              Obx(() => _debugMode.value
                  ? Container()
                  : Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF363339),
                      ),
                      child: Icon(Icons.more_vert, size: 15),
                    ))
            ]),
        body: SafeArea(
          // width: size.width,
          // height: size.height,
          child: BlocBuilder<LoginBloc, LoginState>(
            bloc: _loginBloc,
            builder: (_, state) {
              if (state is LoginAuthState) {
                return HomeScreen(updateAppBar: updateAppBar);
              } else
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 84.h),
                          width: 100.w,
                          height: 30.h,
                          child: Image.asset('assets/images/logo.png',
                              fit: BoxFit.contain)),
                      ButtonLogin(login),
                      ButtonRegister(register)
                    ],
                  ),
                );
            },
          ),
        ));
  }

  void updateAppBar() {
    _debugMode.value = true;
  }

  void login() async {
    _loginBloc.add(LoginAuthEvent());
  }

  void register() {}
}
