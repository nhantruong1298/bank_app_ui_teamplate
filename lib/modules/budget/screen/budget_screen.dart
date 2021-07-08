import 'package:bank_app/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final _screenUtil = ScreenUtil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF433D48).withOpacity(0.4),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            width: _screenUtil.screenWidth,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Text('${Utils.usdSymbol}1,345',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600)),
                Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('June,2020',
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.sp))))
              ]),
              SizedBox(height: 4.h),
              Text('September forecast ${Utils.usdSymbol}2,010',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp))
            ]),
          ),
          SizedBox(height: 54.h),
          Container(
            width: _screenUtil.screenWidth,
            height: 250.h,
            child: LineChart(lineChartData()),
          )
        ]),
      )),
    );
  }

  LineChartData lineChartData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Color(0xFFB2D0CE).withOpacity(0.5),
              tooltipRoundedRadius: 8,
              tooltipPadding: EdgeInsets.all(5),
              getTooltipItems: (value) {
                return [
                  LineTooltipItem('-${Utils.usdSymbol}1,345\n JUNE 15,2020',
                      TextStyle(color: Colors.black, fontSize: 12.sp))
                ];
              })),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
              TextStyle(color: Color(0xff68737d), fontSize: 13.sp),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Jul';
              case 2:
                return 'May';
              case 5:
                return 'Jun';
              case 8:
                return 'Jul';
              case 10:
                return 'May';
            }
            return '';
          },
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.1)).toList(),
          ),
        ),
      ],
    );
  }

  List<Color> gradientColors = [const Color(0xFFB2D0CE)];
}
