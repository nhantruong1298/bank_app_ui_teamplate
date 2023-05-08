part of 'home_screen.dart';

class _LoansView extends StatelessWidget {
  const _LoansView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const _LoanTitle(),
      SizedBox(height: 13.h),
      _ListLoanItem(
        image: 'assets/images/icon_card.png',
        imageBackgroundColor: Color(0xFFB2D0CE).withOpacity(0.85),
        amount: '78,92',
        expiresDate: '12/22/2023',
        rates: '3.5%',
        title: 'Account N*3874825',
      ),
      SizedBox(height: 16.h),
      _ListLoanItem(
        image: 'assets/images/flash.png',
        imageBackgroundColor: Colors.black,
        amount: '78,92',
        expiresDate: '12/22/2023',
        rates: '3.5%',
        title: 'Account N*3874825',
        linearColors: [
          Color(0xFFEAEAEA),
          Color(0xFFB2D0CE).withOpacity(0.85),
        ],
      ),
    ]);
  }
}

class _ListLoanItem extends StatelessWidget {
  final String? image;
  final String? title;
  final String? expiresDate;
  final String? amount;
  final String? rates;
  final Color? imageBackgroundColor;
  final List<Color>? linearColors;
  const _ListLoanItem({
    this.image,
    this.title,
    this.expiresDate,
    this.amount,
    this.rates,
    this.imageBackgroundColor,
    this.linearColors = const [
      Colors.black,
      Colors.black,
    ],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 20.w),
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: linearColors!),
            borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius)),
        child: Row(children: [
          Container(
            padding: EdgeInsets.all(8),
            width: 32.w,
            height: 32.w,
            decoration: BoxDecoration(
                color: imageBackgroundColor,
                borderRadius:
                    BorderRadius.circular(AppDimensions.defaultMRadius)),
            child: Image.asset(image!),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Text('$title',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                  const Spacer(),
                  Text('${AppSymbol.usdSymbol} $amount',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                children: [
                  Text('Expires $expiresDate',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF79767D),
                          fontWeight: FontWeight.w400)),
                  const Spacer(),
                  Text('Rate $rates',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF79767D),
                          fontWeight: FontWeight.w400)),
                ],
              )
            ]),
          )
        ]));
  }
}

class _LoanTitle extends StatelessWidget {
  const _LoanTitle();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.expand_more, size: 11.w, color: const Color(0xFF79767D)),
      SizedBox(width: 10.w),
      Text('CURRENT LOANS',
          style: TextStyle(fontSize: 10.sp, color: Colors.white)),
      const Spacer(),
      Container(
        width: 20.w,
        height: 20.w,
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(20)),
        child: Icon(Icons.add, color: Colors.white, size: 12.w),
      )
    ]);
  }
}
