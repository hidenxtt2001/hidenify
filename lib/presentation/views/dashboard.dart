import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/presentation/views/home/home_page.dart';
import 'package:streaming_app/presentation/views/setttings/settings_page.dart';

import '../../generated/l10n.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndexPage = 0;
  late PageController _controller;
  late ScrollController _scrollController;

  @override
  void initState() {
    _controller = PageController(initialPage: 0, keepPage: true);
    _scrollController = ScrollController();
    super.initState();
  }

  final listPage = [
    HomePage.instance,
    SettingsPage.instance,
  ];

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return Scaffold(
      extendBody: true,
      body: _bodyPage(),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0.20.sw, vertical: 20.h),
          padding: EdgeInsets.all(15.sp),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 4.5.sp,
                blurRadius: 4.5.sp,
                offset: const Offset(2, 5), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15.w)),
            color: AppColor.color7,
          ),
          child: GNav(
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            curve: Curves.fastOutSlowIn, // tab animation curves
            iconSize: 24, // tab button icon size
            gap: 8,
            tabs: [
              GButton(
                padding: EdgeInsets.all(20.w),
                iconColor: AppColor.color5.withOpacity(0.5),
                iconActiveColor: AppColor.color2,
                textColor: AppColor.color2,
                iconSize: 24,
                backgroundColor: AppColor.color2.withOpacity(0.2),
                icon: Icons.home,
                text: lang.home,
              ),
              GButton(
                padding: EdgeInsets.all(20.w),
                iconColor: AppColor.color5.withOpacity(0.5),
                iconActiveColor: AppColor.color1,
                textColor: AppColor.color1,
                iconSize: 24,
                backgroundColor: AppColor.color1.withOpacity(0.2),
                icon: Icons.settings,
                text: lang.settings,
              ),
            ],
            selectedIndex: _currentIndexPage,
            onTabChange: (index) {
              setState(() {
                _currentIndexPage = index;
              });
              _controller.jumpToPage(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _bodyPage() {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listPage.length,
      controller: _controller,
      itemBuilder: (context, index) {
        return listPage[index];
      },
    );
  }
}
