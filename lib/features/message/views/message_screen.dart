import 'package:bank_app/widgets/commons/finance_widget.dart';
import 'package:bank_app/resources/app_colors.dart';
import 'package:bank_app/resources/app_dimensions.dart';
import 'package:bank_app/widgets/layouts/basic_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicLayout(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 32.h),
          _DialoguesView(),
          _MessagesView()
        ]),
      ),
    );
  }
}

class _DialoguesView extends StatelessWidget {
  const _DialoguesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Dialogues',
            style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        SizedBox(height: 18.h),
        Row(children: [
          _buildDialoguesFilter(
            filter: 'Actions',
            backgroundColor: const Color(0xFFF2FE8D),
            textColor: Colors.black,
          ),
          SizedBox(width: 12.w),
          _buildDialoguesFilter(
            filter: 'Channels',
            backgroundColor: const Color(0xFF252525),
            textColor: Colors.white,
          ),
          SizedBox(width: 12.w),
          _buildDialoguesFilter(
            filter: 'Postcards',
            backgroundColor: const Color(0xFF252525),
            textColor: Colors.white,
          ),
          const Spacer(),
          _buildFilterButton()
        ]),
        SizedBox(height: 30.h),
        _ListDialogues(),
        SizedBox(height: 30.h),
      ]),
    );
  }

  Widget _buildFilterButton() {
    return Container(
      width: 40.w,
      height: 28.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.defaultXLRadius),
          color: const Color(0xFF252525)),
      child: Icon(CupertinoIcons.slider_horizontal_3,
          size: 13.w, color: Colors.white),
    );
  }

  Widget _buildDialoguesFilter({
    String? filter,
    Color? textColor,
    Color? backgroundColor,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimensions.defaultXLRadius),
            color: backgroundColor),
        child: Text(filter ?? '',
            style: TextStyle(color: textColor, fontSize: 12.sp)));
  }
}

class _ListDialogues extends StatelessWidget {
  const _ListDialogues({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _listDialogueDummyData = const [
    {
      'img': 'assets/images/icon_start.png',
      'color': Color(0xFFF2FE8D),
      'title': 'Transfer\nmoney'
    },
    {
      'img': 'assets/images/icon_budget.png',
      'color': Color(0xFFB2D0CE),
      'title': 'Lou\nBonuses'
    },
    {
      'img': 'assets/images/icon_chart.png',
      'color': Color(0xFFAA9EB7),
      'title': 'Lou\nAssets'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 130.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
              itemCount: _listDialogueDummyData.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return FinanceWidget(
                    img: _listDialogueDummyData[index]['img'].toString(),
                    color: _listDialogueDummyData[index]['color'],
                    title: _listDialogueDummyData[index]['title']);
              }))
    ]);
  }
}

class _MessagesView extends StatelessWidget {
  const _MessagesView();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFF252525).withOpacity(0.6),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Messages',
                style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(height: 23.h),
            _ListMessage()
          ],
        ),
      ),
    );
  }
}

class _ListMessage extends StatelessWidget {
  const _ListMessage();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildListMessageItem(
            image: 'assets/images/jennifer.png',
            backgroundColor: Colors.cyanAccent,
            subTitle: 'Hi! I return the debt',
            userName: 'Jeniffer'),
        _buildListMessageItem(
            image: 'assets/images/avatar.png',
            backgroundColor: Colors.pinkAccent,
            subTitle: 'Thanks!',
            userName: 'John Baldwin'),
        _buildListMessageItem(
            image: 'assets/images/maya.png',
            backgroundColor: Colors.orangeAccent,
            subTitle: 'Transfer',
            userName: 'Maya 💫 '),
        _buildListMessageItem(
            image: 'assets/images/alice.png',
            backgroundColor: Colors.purpleAccent,
            subTitle: 'Hi! I return the debt',
            userName: 'Sister Alice 🌸'),
      ],
    );
  }

  TextStyle get _textStyle => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      color: AppColors.textGreyColor);

  Widget _buildListMessageItem({
    String? image,
    String? userName,
    String? subTitle,
    Color? backgroundColor,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            padding: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
            child: CircleAvatar(
                foregroundImage: Image.asset(image ?? '').image,
                backgroundColor: backgroundColor),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName ?? '',
                  style: _textStyle.copyWith(color: Colors.white),
                ),
                Text(
                  subTitle ?? '',
                  style: _textStyle.copyWith(fontSize: 14.sp),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Row(
            children: [
              SvgPicture.asset('assets/images/icon_check.svg', width: 12.w),
              Text(' 10 Feb', style: _textStyle.copyWith(fontSize: 12.sp))
            ],
          )
        ],
      ),
    );
  }
}
