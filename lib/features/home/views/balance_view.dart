part of 'home_screen.dart';

class _BalanceView extends StatelessWidget {
  const _BalanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Your balance',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400)),
      const SizedBox(height: 5),
      Row(children: [
        Text('${AppSymbol.usdSymbol} 7,896',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25.sp)),
        const Spacer(),
        Container(
          width: 32.w,
          height: 32.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGreyColor,
          ),
          child: Icon(Icons.search, color: Colors.white, size: 15.w),
        )
      ]),
    ]);
  }
}
