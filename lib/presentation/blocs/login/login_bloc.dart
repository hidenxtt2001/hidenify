import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:streaming_app/utils/helpers/status.dart';

import '../../../utils/logger.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthBloc _authBloc;

  LoginBloc(this._authBloc) : super(const LoginState()) {
    on<LoginEventWithGmail>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        final account = await _authBloc.signInGoogle();
        if (account == null) throw Exception();
        final googleAuth = await account.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        _authBloc.add(AuthEvent.signIn(auth: credential));
      } catch (error) {
        printLog(this, message: error, error: error);
        emit(state.copyWith(status: Error(error)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
