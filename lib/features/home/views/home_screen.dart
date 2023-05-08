import 'package:bank_app/resources/app_theme.dart';
import 'package:bank_app/widgets/layouts/basic_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bank_app/widgets/commons/finance_widget.dart';
import 'package:bank_app/resources/app_colors.dart';
import 'package:bank_app/resources/app_dimensions.dart';
import 'package:bank_app/resources/app_symbol.dart';

part 'loans_view.dart';
part 'currencies_and_metal_view.dart';
part 'visa_view.dart';
part 'balance_view.dart';
part 'finance_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicLayout(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppDimensions.defaultPadding),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32.h),
                  const _BalanceView(),
                  SizedBox(height: 32.h),
                  _VisaView(),
                  const _FinanceView(),
                ]),
          ),
          SizedBox(height: 32.h),
          _LoansAndCurrenciesView()
        ]),
      ),
    );
  }
}

class _LoansAndCurrenciesView extends StatelessWidget {
  const _LoansAndCurrenciesView();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
      decoration: BoxDecoration(
          gradient: AppThemeStyle.darkLinearGradient,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const _LoansView(),
        SizedBox(height: 36.h),
        const _CurrenciesAndMetalView()
      ]),
    );
  }
}
