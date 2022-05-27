import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:streaming_app/domain/repositories/auth_repository.dart';
import 'package:streaming_app/presentation/blocs/auth/auth_bloc.dart';

import '../../../core/status.dart';
import '../../../utils/logger.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState()) {
    on<LoginEventWithGmail>((event, emit) async {
      emit(state.copyWith(status: const Loading()));
      try {
        final result = await _authRepository.login();
        result.fold((failure) => throw failure,
            (user) => emit(state.copyWith(status: Success(user))));
      } catch (error) {
        printLog(this, message: error, error: error);
        emit(state.copyWith(status: Error(error)));
      } finally {
        emit(state.copyWith(status: const Idle()));
      }
    });
  }
}
