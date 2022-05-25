part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkExistUser() = AuthEventCheckExistUser;
  const factory AuthEvent.signIn({required OAuthCredential auth}) =
      AuthEventSignin;
  const factory AuthEvent.logout() = AuthEventLogout;
}
