import 'package:bank_app/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Color> gradientColors = [const Color(0xFFB2D0CE)];
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
