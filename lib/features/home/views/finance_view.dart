part of 'home_screen.dart';

class _FinanceView extends StatelessWidget {
  const _FinanceView({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _financeDummyData = const [
    {
      'img': 'assets/images/icon_start.png',
      'color': Color(0xFFF2FE8D),
      'title': 'My bonuses'
    },
    {
      'img': 'assets/images/icon_budget.png',
      'color': Color(0xFFB2D0CE),
      'title': 'My budget'
    },
    {
      'img': 'assets/images/icon_chart.png',
      'color': Color(0xFFAA9EB7),
      'title': 'Finance analysis'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(top: 39.h, bottom: 12.h),
        child: Text('FINANCE',
            style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w500)),
      ),
      Container(
          height: 100.w,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
              itemCount: _financeDummyData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return FinanceWidget(
                    img: _financeDummyData[index]['img'].toString(),
                    color: _financeDummyData[index]['color'],
                    title: _financeDummyData[index]['title']);
              }))
    ]);
  }
}
