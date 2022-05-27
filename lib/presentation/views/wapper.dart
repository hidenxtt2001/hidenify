import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streaming_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:streaming_app/presentation/views/dashboard.dart';
import 'package:streaming_app/presentation/views/login/login_page.dart';

class Wapper extends StatefulWidget {
  const Wapper({Key? key}) : super(key: key);

  @override
  State<Wapper> createState() => _WapperState();
}

class _WapperState extends State<Wapper> {
  late AuthBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<AuthBloc>();
    super.initState();

    _bloc.add(const AuthEvent.checkExistUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Scaffold(),
          authenticated: (user) => const Dashboard(),
          unauthenticated: () => const LoginPage(),
        );
      },
    );
  }
}
