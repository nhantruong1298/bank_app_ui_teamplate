part of 'home_screen.dart';

class _VisaView extends StatelessWidget {
  _VisaView({Key? key}) : super(key: key);

  final _listColors = [
    [Color(0xFFEAEAEA), Color(0xFFB2D0CE).withOpacity(0.85)],
    [Color(0xFFFCFFDF), Color(0xFFF1FE87).withOpacity(0.85)],
    [Color(0xFFF2EFF4), Color(0xFFB8A9C6).withOpacity(0.85)]
  ];

  final _visaDummyData = const [
    {'type': 'Salary', 'balance': '2,230', 'id': '6917'},
    {'type': 'Savings account', 'balance': '5,566', 'id': '4552'},
    {'type': 'Salary', 'balance': '2,230', 'id': '6917'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: ScreenUtil().screenWidth,
      child: ListView.builder(
          itemCount: _visaDummyData.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return _ListVisaItem(
              onTap: () {},
              colors: _listColors[index],
              balance: _visaDummyData[index]['balance'],
              id: _visaDummyData[index]['id'],
              type: _visaDummyData[index]['type'],
            );
          }),
    );
  }
}

class _ListVisaItem extends StatelessWidget {
  final VoidCallback onTap;
  final List<Color> colors;
  final String? type;
  final String? balance;
  final String? id;
  const _ListVisaItem(
      {required this.onTap,
      required this.colors,
      required this.type,
      required this.balance,
      required this.id,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18.w),
        margin: EdgeInsets.only(right: 13.w),
        width: 148.w,
        height: 170.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimensions.defaultXLRadius),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: colors)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 40.w,
                height: 20.h,
                child: Image.asset('assets/images/logo_visa.png',
                    color: Colors.black, fit: BoxFit.contain),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(type.toString(),
                    style: TextStyle(
                        fontSize: 11.sp, fontWeight: FontWeight.w500)),
                Text('${AppSymbol.usdSymbol} $balance',
                    style: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.w700)),
              ]),
              Text('** $id',
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500))
            ]),
      ),
    );
  }
}
