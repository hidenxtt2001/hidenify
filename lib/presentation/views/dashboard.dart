import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/configs/app_config.dart';
import 'package:streaming_app/injection/dependency_injection.dart';
import 'package:streaming_app/presentation/blocs/dashboard/dashboard_cubit.dart';
import 'package:streaming_app/presentation/views/messenger/messenger_screen.dart';
import 'package:streaming_app/presentation/views/user/user_screen.dart';
import 'package:streaming_app/utils/extension.dart';

import '../../generated/l10n.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndexPage = 0;
  late DashboardCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<DashboardCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.dispose();
    super.dispose();
  }

  final listPage = [
    MessengerScreen.instance,
    UserScreen.instance,
  ];

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _bodyPage(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20.w,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.color5,
        unselectedItemColor: AppColor.color1,
        items: [
          BottomNavigationBarItem(
            icon: "messenger".getIcon(height: 24.w, color: AppColor.color1),
            activeIcon:
                "messenger".getIcon(height: 24.w, color: AppColor.color5),
            label: lang.messenger,
          ),
          BottomNavigationBarItem(
            icon: "user".getIcon(height: 24.w, color: AppColor.color1),
            activeIcon: "user".getIcon(height: 24.w, color: AppColor.color5),
            label: lang.user,
          ),
        ],
        currentIndex: _currentIndexPage,
        onTap: (index) {
          setState(() {
            _currentIndexPage = index;
          });
          _cubit.pageController.jumpToPage(index);
        },
      ),
    );
  }

  Widget _bodyPage() {
    return SafeArea(
      bottom: false,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listPage.length,
        controller: _cubit.pageController,
        itemBuilder: (context, index) {
          return listPage[index];
        },
      ),
    );
  }
}
