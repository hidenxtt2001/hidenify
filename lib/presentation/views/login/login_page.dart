import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/configs/app_config.dart';
import 'package:streaming_app/configs/text_config.dart';
import 'package:streaming_app/injection/dependency_injection.dart';
import 'package:streaming_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:streaming_app/presentation/blocs/login/login_bloc.dart';
import 'package:streaming_app/presentation/widgets/button/primary_button.dart';
import 'package:streaming_app/presentation/widgets/loading/global_loading.dart';

import '../../../core/status.dart';
import '../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.call<LoginBloc>(),
      child: const Scaffold(
        extendBody: true,
        body: _BodyScreen(),
      ),
    );
  }
}

class _BodyScreen extends StatefulWidget {
  const _BodyScreen({Key? key}) : super(key: key);

  @override
  State<_BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<_BodyScreen> {
  late LoginBloc _bloc;
  late AuthBloc _authBloc;
  @override
  void initState() {
    _bloc = context.read<LoginBloc>();
    _authBloc = context.read<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Lang.of(context);
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        switch (state.status.runtimeType) {
          case Success:
            _authBloc.add(AuthEvent.signIn(user: state.status.data));
            hideLoadingDialog();
            break;
          case Error:
            hideLoadingDialog();
            break;
          case Idle:
            hideLoadingDialog();
            break;
          case Loading:
            showLoadingDialog();
            break;
        }
      },
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              lang.welcomeTo,
              style: TextConfig.kHeader1,
            ),
            25.h.verticalSpace,
            Text(
              AppConfig.appName,
              style: TextConfig.kAppName,
            ),
            25.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
              child: PrimaryButton(
                title: lang.getStarted,
                onPressed: () {
                  _bloc.add(const LoginEvent.loginWithGmail());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
