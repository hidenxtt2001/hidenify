import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/configs/app_themes.dart';
import 'package:streaming_app/generated/l10n.dart';
import 'package:streaming_app/injection/dependency_injection.dart';
import 'package:streaming_app/presentation/blocs/app/app_bloc.dart';
import 'package:streaming_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:streaming_app/presentation/widgets/loading/global_loading.dart';
import 'package:streaming_app/routes/app_route.dart';
import 'package:streaming_app/routes/route_url.dart';

import 'presentation/blocs/home/home_bloc.dart';
import 'presentation/widgets/loading/theme.dart';
import 'utils/utils.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>(),
      child: const _SetupApp(),
    );
  }
}

class _SetupApp extends StatefulWidget {
  const _SetupApp({Key? key}) : super(key: key);

  @override
  State<_SetupApp> createState() => __SetupAppState();
}

class __SetupAppState extends State<_SetupApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        )
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(390, 844),
        builder: (child) => MaterialApp(
          localizationsDelegates: const [
            Lang.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.dartTheme,
          themeMode: context.watch<AppBloc>().state.themeMode,
          locale: context.watch<AppBloc>().state.locale,
          supportedLocales: Lang.delegate.supportedLocales,
          initialRoute: RouteUrl.splashScreen,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoute.onGenerateRoute,
          builder: (context, widget) {
            if (widget == null) {
              debugPrint("Material builder: widget is null");
              return Utils.empty;
            }
            return GlobalLoading(
              themeData: LoadingThemeData(
                tapDismiss: false,
              ),
              child: widget,
            );
          },
        ),
      ),
    );
  }
}
