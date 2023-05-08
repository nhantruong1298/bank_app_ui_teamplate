import 'package:bank_app/features/card/views/filter_transaction_view.dart';
import 'package:bank_app/resources/app_dimensions.dart';
import 'package:bank_app/resources/app_symbol.dart';
import 'package:bank_app/resources/app_theme.dart';
import 'package:bank_app/widgets/layouts/basic_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'card_view.dart';
part 'card_transactions_view.dart';

class YourCardScreen extends StatefulWidget {
  const YourCardScreen({Key? key}) : super(key: key);

  @override
  _YourCardScreenState createState() => _YourCardScreenState();
}

class _YourCardScreenState extends State<YourCardScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicLayout(
        child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 24.h),
        const _CardView(),
        SizedBox(height: 80.h),
        const _CardTransactionList(),
      ]),
    ));
  }
}

