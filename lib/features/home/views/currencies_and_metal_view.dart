part of 'home_screen.dart';

final _dummyCurrenciesData = const [
  {
    'img': 'assets/images/usd_symbol.png',
    'name': 'USD',
    'buy': '78,92',
    'sell': '78,92'
  },
  {
    'img': 'assets/images/eur_symbol.png',
    'name': 'EUR',
    'buy': '78,92',
    'sell': '78,92'
  },
];

final _dummyMetalsData = const [
  {
    'img': 'assets/images/gold.png',
    'name': 'Gold',
    'buy': '78,92',
    'sell': '78,92'
  },
  {
    'img': 'assets/images/gold.png',
    'name': 'Silver',
    'buy': '78,92',
    'sell': '78,92'
  },
];

class _CurrenciesAndMetalView extends StatelessWidget {
  const _CurrenciesAndMetalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Icon(Icons.expand_more, size: 11.w, color: const Color(0xFF79767D)),
        SizedBox(width: 10.w),
        Text('CURRENCIES AND METALS',
            style: TextStyle(fontSize: 10.sp, color: Colors.white)),
      ]),
      SizedBox(height: 10.h),
      const _CurrenciesView(),
      SizedBox(height: 10.h),
      const _MetalsView()
    ]);
  }
}

class _MetalsView extends StatelessWidget {
  const _MetalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          padding: EdgeInsets.all(20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Metals',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      ...List.generate(_dummyMetalsData.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12.w),
                                padding: EdgeInsets.all(5),
                                width: 20.w,
                                height: 20.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFFB2D0CE).withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(
                                        AppDimensions.defaultXSRadius)),
                                child: Image.asset(
                                    _dummyMetalsData[index]['img']!),
                              ),
                              Text(_dummyMetalsData[index]['name']!,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.sp))
                            ],
                          ),
                        );
                      }),
                    ])),
            _buildBuyColumn(),
            _buildSellColumn(),
          ]))
    ]);
  }

  Flexible _buildBuyColumn() {
    return Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Buy',
              style:
                  TextStyle(fontSize: 12.sp, color: const Color(0xFF79767D))),
          SizedBox(height: 14.h),
          ...List.generate(
            _dummyMetalsData.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                    '${AppSymbol.usdSymbol} ${_dummyMetalsData[index]['buy']}',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              );
            },
          ),
        ]));
  }

  Flexible _buildSellColumn() {
    return Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Sell',
              style:
                  TextStyle(fontSize: 12.sp, color: const Color(0xFF79767D))),
          SizedBox(height: 14.h),
          ...List.generate(
            _dummyMetalsData.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                    '${AppSymbol.usdSymbol} ${_dummyMetalsData[index]['sell']}',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              );
            },
          ),
        ]));
  }
}

class _CurrenciesView extends StatelessWidget {
  const _CurrenciesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          padding: EdgeInsets.all(20.w),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Currencies',
                          style: TextStyle(
                              fontSize: 12.sp, color: const Color(0xFF79767D))),
                      SizedBox(height: 14.h),
                      ...List.generate(_dummyCurrenciesData.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12.w),
                                padding: EdgeInsets.all(5),
                                width: 20.w,
                                height: 20.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFB2D0CE).withOpacity(0.85),
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.defaultXSRadius),
                                ),
                                child: Image.asset(
                                    _dummyCurrenciesData[index]['img']!),
                              ),
                              Text(_dummyCurrenciesData[index]['name']!,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.sp))
                            ],
                          ),
                        );
                      }),
                    ])),
            _buildBuyColumn(),
            _buildSellColumn(),
          ])),
    ]);
  }

  Flexible _buildSellColumn() {
    return Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Sell',
              style:
                  TextStyle(fontSize: 12.sp, color: const Color(0xFF79767D))),
          SizedBox(height: 14.h),
          ...List.generate(
            _dummyCurrenciesData.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                    '${AppSymbol.usdSymbol} ${_dummyCurrenciesData[index]['sell']}',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              );
            },
          ),
        ]));
  }

  Flexible _buildBuyColumn() {
    return Flexible(
        flex: 2,
        fit: FlexFit.tight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Buy',
              style:
                  TextStyle(fontSize: 12.sp, color: const Color(0xFF79767D))),
          SizedBox(height: 14.h),
          ...List.generate(
            _dummyCurrenciesData.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                    '${AppSymbol.usdSymbol} ${_dummyCurrenciesData[index]['buy']}',
                    style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              );
            },
          ),
        ]));
  }
}
