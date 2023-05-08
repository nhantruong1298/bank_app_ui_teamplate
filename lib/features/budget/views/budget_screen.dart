import 'package:bank_app/resources/app_dimensions.dart';
import 'package:bank_app/resources/app_symbol.dart';
import 'package:bank_app/resources/app_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'budget_list_view.dart';
part 'line_chart_view.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppThemeStyle.darkLinearGradient,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _BudgetHeader(),
            SizedBox(height: 50.h),
            _LineChartView(),
            SizedBox(height: 70.h),
            _BudgetListView(),
          ]),
        ),
      ),
    );
  }
}

class _BudgetHeader extends StatelessWidget {
  const _BudgetHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(AppDimensions.defaultXLRadius)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Text('${AppSymbol.usdSymbol}1,345',
              style: _defaultTextStyle.copyWith(
                  fontSize: 21.sp, fontWeight: FontWeight.w600)),
          Expanded(
              child: Container(
                  alignment: Alignment.centerRight,
                  child: Text('June, 2020', style: _defaultTextStyle)))
        ]),
        SizedBox(height: 4.h),
        Text('September forecast ${AppSymbol.usdSymbol}2,010',
            style: _defaultTextStyle)
      ]),
    );
  }

  TextStyle get _defaultTextStyle =>
      TextStyle(color: Colors.white, fontSize: 12.sp);
}
