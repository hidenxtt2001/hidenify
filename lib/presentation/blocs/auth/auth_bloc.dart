import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';
import 'package:streaming_app/domain/repositories/auth_repository.dart';
import 'package:streaming_app/utils/logger.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEventCheckExistUser>((event, emit) async {
      final check = await _authRepository.getExistUser();
      check.fold(
        (failure) => emit(const AuthState.unauthenticated()),
        (user) => emit(AuthState.authenticated(user)),
      );
    });
    on<AuthEventSignin>((event, emit) async {
      try {
        emit(AuthState.authenticated(event.user));
      } catch (e) {
        printLog(this, message: e, error: e);
        emit(const AuthState.unauthenticated());
      }
    });
    on<AuthEventLogout>((event, emit) async {
      try {
        (await _authRepository.logout())
            .fold((failure) => throw failure, (r) => null);
      } catch (e) {
        printLog(this, message: e, error: e);
      } finally {
        emit(const AuthState.unauthenticated());
      }
    });
  }
}
