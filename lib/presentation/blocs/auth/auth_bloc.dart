import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/utils/logger.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late GoogleSignIn _googleSignIn;
  AuthBloc() : super(const AuthState.initial()) {
    _googleSignIn = GoogleSignIn(scopes: ["email"]);
    on<AuthEventCheckExistUser>((event, emit) async {
      if (FirebaseAuth.instance.currentUser != null) {
        try {
          await FirebaseAuth.instance.currentUser?.reload();
        } catch (e) {
          printLog(this, message: e, error: e);
          await logoutGoogle();
        }
        emit(const AuthState.authenticated());
      } else {
        emit(const AuthState.unauthenticated());
      }
    });
    on<AuthEventSignin>((event, emit) async {
      try {
        printLog(this, message: event.auth);
        await FirebaseAuth.instance.signInWithCredential(event.auth);
        emit(const AuthState.authenticated());
      } catch (e) {
        printLog(this, message: e, error: e);
        emit(const AuthState.unauthenticated());
      }
    });
    on<AuthEventLogout>((event, emit) async {
      await logoutGoogle();
      emit(const AuthState.unauthenticated());
    });
  }

  Future signInGoogle() async => await _googleSignIn.signIn();
  Future logoutGoogle() async {
    await _googleSignIn.signOut();
    await _googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
