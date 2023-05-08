part of 'your_card_screen.dart';

class _CardTransactionList extends StatelessWidget {
  const _CardTransactionList();

  TextStyle get _defaultTextStyle => TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500);

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
          Row(children: [
            Text('Transactions',
                style: _defaultTextStyle.copyWith(fontSize: 21.sp)),
            const Spacer(),
            _FilterButton(onTap: () => showFilterView(context))
          ]),
          SizedBox(height: 24.h),
          Text('Today', style: _defaultTextStyle.copyWith(fontSize: 14.sp)),
          SizedBox(height: 17.h),
          _CardTransactionListItem(
            name: 'Transfer',
            description: 'Incoming transfer',
            amount: '+ ${AppSymbol.usdSymbol}3,110',
            icon: CupertinoIcons.arrow_down_to_line_alt,
            iconBackgroundColor: Color(0xFFF2FE8D),
          ),
          SizedBox(height: 20.h),
          _CardTransactionListItem(
            name: 'Health',
            description: 'Pharmacy',
            amount: '- ${AppSymbol.usdSymbol}312,9',
            icon: CupertinoIcons.arrow_up_to_line_alt,
            iconBackgroundColor: Color(0xFFFB2D0CE),
          ),
          SizedBox(height: 35.h),
          Text('June 13th', style: _defaultTextStyle.copyWith(fontSize: 14.sp)),
          SizedBox(height: 17.h),
          _CardTransactionListItem(
            name: 'Transfer',
            description: 'Incoming transfer',
            amount: '+ ${AppSymbol.usdSymbol}3,110',
            icon: CupertinoIcons.arrow_down_to_line_alt,
            iconBackgroundColor: Color(0xFFF2FE8D),
          ),
          SizedBox(height: 20.h),
          _CardTransactionListItem(
            name: 'Health',
            description: 'Pharmacy',
            amount: '- ${AppSymbol.usdSymbol}312,9',
            icon: CupertinoIcons.arrow_up_to_line_alt,
            iconBackgroundColor: Color(0xFFFB2D0CE),
          ),
        ]));
  }

  void showFilterView(BuildContext context) {
    showModalBottomSheet(
        context: context,
        barrierColor: Colors.black.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        builder: (_) {
          return FilterTransactionView();
        });
  }
}

class _FilterButton extends StatelessWidget {
  final VoidCallback? onTap;
  const _FilterButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 34.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(40)),
        child: Row(children: [
          Text('Filter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              )),
          const SizedBox(width: 5),
          Icon(Icons.expand_more, size: 14.sp, color: Colors.white)
        ]),
      ),
    );
  }
}

class _CardTransactionListItem extends StatelessWidget {
  final String? name;
  final String? description;
  final String? amount;
  final IconData? icon;
  final Color? iconBackgroundColor;
  const _CardTransactionListItem({
    this.name,
    this.description,
    this.amount,
    this.icon,
    this.iconBackgroundColor,
  });

  TextStyle get _defaultTextStyle => TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 32.r,
        height: 32.r,
        decoration:
            BoxDecoration(color: iconBackgroundColor, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.black, size: 13.w),
      ),
      SizedBox(width: 16.w),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('$name', style: _defaultTextStyle),
        Text('$description',
            style: _defaultTextStyle.copyWith(
                color: Color(0xFF79767D), fontSize: 14.sp))
      ]),
      const Spacer(),
      Text('$amount', style: _defaultTextStyle)
    ]);
  }
}
