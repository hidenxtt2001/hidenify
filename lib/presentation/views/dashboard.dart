import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/configs/app_config.dart';
import 'package:streaming_app/injection/dependency_injection.dart';
import 'package:streaming_app/presentation/blocs/dashboard/dashboard_cubit.dart';
import 'package:streaming_app/presentation/views/chat/chat_screen.dart';
import 'package:streaming_app/presentation/views/people/people_screen.dart';
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
    ChatScreen.instance,
    PeopleScreen.instance,
  ];

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _bodyPage(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              tooltip: lang.chats,
              icon: "chat".getIcon(
                  height: 30.w,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.7)),
              activeIcon: "chat".getIcon(
                  height: 30.w,
                  color: Theme.of(context).colorScheme.onSecondary),
              label: lang.chats,
            ),
            BottomNavigationBarItem(
              icon: "video_call".getIcon(
                  height: 30.w,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.7)),
              activeIcon: "video_call".getIcon(
                  height: 30.w,
                  color: Theme.of(context).colorScheme.onSecondary),
              label: lang.videoCall,
            ),
            BottomNavigationBarItem(
              icon: "users".getIcon(
                  height: 30.w,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.7)),
              activeIcon: "users".getIcon(
                  height: 30.w,
                  color: Theme.of(context).colorScheme.onSecondary),
              label: lang.people,
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
