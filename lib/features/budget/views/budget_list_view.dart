part of 'budget_screen.dart';

class _BudgetListView extends StatelessWidget {
  const _BudgetListView();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xFF282729).withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppDimensions.defaultLRadius),
              topRight: Radius.circular(AppDimensions.defaultLRadius),
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildHeader(),
          SizedBox(height: 24.h),
          _buildBudgetListItem(
            name: 'Webflow',
            icon: 'assets/images/webflow.png',
            description: 'Outcoming transfer',
            amount: '- ${AppSymbol.usdSymbol}79',
          ),
          SizedBox(height: 20.h),
          _buildBudgetListItem(
            name: 'Youtube',
            icon: 'assets/images/youtube.png',
            description: 'Annual withdrawal of funds',
            amount: '- ${AppSymbol.usdSymbol}15',
          ),
          SizedBox(height: 20.h),
          _buildBudgetListItem(
            name: 'Sketch',
            icon: 'assets/images/sketch.png',
            description: 'Annual withdrawal of funds',
            amount: '- ${AppSymbol.usdSymbol}79',
          ),
          SizedBox(height: 20.h),
          _buildBudgetListItem(
            name: 'Unplash',
            icon: 'assets/images/unplash.png',
            description: 'Annual withdrawal of funds',
            amount: '- ${AppSymbol.usdSymbol}9',
          ),
        ]));
  }

  TextStyle get _defaultTextStyle => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
      );

  Widget _buildBudgetListItem({
    String? icon,
    String? name,
    String? description,
    String? amount,
  }) {
    return Row(children: [
      Image.asset(
        icon!,
        width: 32.r,
        height: 32.r,
      ),
      SizedBox(width: 16.w),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(name!, style: _defaultTextStyle),
        const SizedBox(height: 3),
        Text(description!,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xFF79767D)))
      ]),
      const Spacer(),
      Text(amount!, style: _defaultTextStyle)
    ]);
  }

  Widget _buildHeader() {
    return Text('June 15, 2020',
        style: _defaultTextStyle.copyWith(fontSize: 20.sp));
  }
}
