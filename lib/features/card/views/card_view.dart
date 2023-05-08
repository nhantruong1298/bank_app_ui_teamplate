part of 'your_card_screen.dart';

class _CardView extends StatelessWidget {
  const _CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget _rowLens = Row(
      children: [
        Icon(Icons.lens, size: 5, color: Colors.black),
        Icon(Icons.lens, size: 5, color: Colors.black),
        Icon(Icons.lens, size: 5, color: Colors.black),
        Icon(Icons.lens, size: 5, color: Colors.black)
      ],
    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.w),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.defaultLRadius),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFCFFDF),
                Color(0xFFF1FE87).withOpacity(0.85)
              ])),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
                width: 40.w,
                height: 30.h,
                child: Image.asset('assets/images/logo_visa.png',
                    fit: BoxFit.contain)),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Text('${AppSymbol.usdSymbol} 5,5566.55',
                  style: TextStyle(
                      color: Color(0xFF272A32),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold)),
            ))
          ],
        ),
        SizedBox(height: 35.h),
        Row(children: [
          Container(
            width: 20.w,
            height: 30.h,
            child: Image.asset('assets/images/chip.png'),
          ),
          Expanded(
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text('valid thru'.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xFF272A32).withOpacity(0.4),
                          fontSize: 10.sp))))
        ]),
        Row(children: [
          _rowLens,
          const SizedBox(width: 5),
          _rowLens,
          const SizedBox(width: 5),
          _rowLens,
          const SizedBox(width: 5),
          Text('4552',
              style: TextStyle(
                  color: Color(0xFF272A32),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold)),
          Expanded(
              child: Container(
                  alignment: Alignment.centerRight,
                  child: Text('12/22',
                      style: TextStyle(
                          color: Color(0xFF272A32),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold))))
        ]),
        SizedBox(height: 20.h),
        Text('Margo Lepski'.toUpperCase(),
            style: TextStyle(
                color: Color(0xFF272A32).withOpacity(0.4), fontSize: 10.sp))
      ]),
    );
  }
}
