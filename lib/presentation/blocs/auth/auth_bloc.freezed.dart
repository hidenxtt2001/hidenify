// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$AuthStateInitialCopyWith<$Res> {
  factory _$$AuthStateInitialCopyWith(
          _$AuthStateInitial value, $Res Function(_$AuthStateInitial) then) =
      __$$AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthStateInitialCopyWith<$Res> {
  __$$AuthStateInitialCopyWithImpl(
      _$AuthStateInitial _value, $Res Function(_$AuthStateInitial) _then)
      : super(_value, (v) => _then(v as _$AuthStateInitial));

  @override
  _$AuthStateInitial get _value => super._value as _$AuthStateInitial;
}

/// @nodoc

class _$AuthStateInitial implements AuthStateInitial {
  const _$AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial() = _$AuthStateInitial;
}

/// @nodoc
abstract class _$$AuthStateAuthenticatedCopyWith<$Res> {
  factory _$$AuthStateAuthenticatedCopyWith(_$AuthStateAuthenticated value,
          $Res Function(_$AuthStateAuthenticated) then) =
      __$$AuthStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthStateAuthenticatedCopyWith<$Res> {
  __$$AuthStateAuthenticatedCopyWithImpl(_$AuthStateAuthenticated _value,
      $Res Function(_$AuthStateAuthenticated) _then)
      : super(_value, (v) => _then(v as _$AuthStateAuthenticated));

  @override
  _$AuthStateAuthenticated get _value =>
      super._value as _$AuthStateAuthenticated;
}

/// @nodoc

class _$AuthStateAuthenticated implements AuthStateAuthenticated {
  const _$AuthStateAuthenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthenticated implements AuthState {
  const factory AuthStateAuthenticated() = _$AuthStateAuthenticated;
}

/// @nodoc
abstract class _$$AuthStateUnauthenticatedCopyWith<$Res> {
  factory _$$AuthStateUnauthenticatedCopyWith(_$AuthStateUnauthenticated value,
          $Res Function(_$AuthStateUnauthenticated) then) =
      __$$AuthStateUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthStateUnauthenticatedCopyWith<$Res> {
  __$$AuthStateUnauthenticatedCopyWithImpl(_$AuthStateUnauthenticated _value,
      $Res Function(_$AuthStateUnauthenticated) _then)
      : super(_value, (v) => _then(v as _$AuthStateUnauthenticated));

  @override
  _$AuthStateUnauthenticated get _value =>
      super._value as _$AuthStateUnauthenticated;
}

/// @nodoc

class _$AuthStateUnauthenticated implements AuthStateUnauthenticated {
  const _$AuthStateUnauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnauthenticated implements AuthState {
  const factory AuthStateUnauthenticated() = _$AuthStateUnauthenticated;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkExistUser,
    required TResult Function(OAuthCredential auth) signIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckExistUser value) checkExistUser,
    required TResult Function(AuthEventSignin value) signIn,
    required TResult Function(AuthEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$AuthEventCheckExistUserCopyWith<$Res> {
  factory _$$AuthEventCheckExistUserCopyWith(_$AuthEventCheckExistUser value,
          $Res Function(_$AuthEventCheckExistUser) then) =
      __$$AuthEventCheckExistUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventCheckExistUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthEventCheckExistUserCopyWith<$Res> {
  __$$AuthEventCheckExistUserCopyWithImpl(_$AuthEventCheckExistUser _value,
      $Res Function(_$AuthEventCheckExistUser) _then)
      : super(_value, (v) => _then(v as _$AuthEventCheckExistUser));

  @override
  _$AuthEventCheckExistUser get _value =>
      super._value as _$AuthEventCheckExistUser;
}

/// @nodoc

class _$AuthEventCheckExistUser implements AuthEventCheckExistUser {
  const _$AuthEventCheckExistUser();

  @override
  String toString() {
    return 'AuthEvent.checkExistUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventCheckExistUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkExistUser,
    required TResult Function(OAuthCredential auth) signIn,
    required TResult Function() logout,
  }) {
    return checkExistUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
  }) {
    return checkExistUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkExistUser != null) {
      return checkExistUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckExistUser value) checkExistUser,
    required TResult Function(AuthEventSignin value) signIn,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return checkExistUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return checkExistUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (checkExistUser != null) {
      return checkExistUser(this);
    }
    return orElse();
  }
}

abstract class AuthEventCheckExistUser implements AuthEvent {
  const factory AuthEventCheckExistUser() = _$AuthEventCheckExistUser;
}

/// @nodoc
abstract class _$$AuthEventSigninCopyWith<$Res> {
  factory _$$AuthEventSigninCopyWith(
          _$AuthEventSignin value, $Res Function(_$AuthEventSignin) then) =
      __$$AuthEventSigninCopyWithImpl<$Res>;
  $Res call({OAuthCredential auth});
}

/// @nodoc
class __$$AuthEventSigninCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthEventSigninCopyWith<$Res> {
  __$$AuthEventSigninCopyWithImpl(
      _$AuthEventSignin _value, $Res Function(_$AuthEventSignin) _then)
      : super(_value, (v) => _then(v as _$AuthEventSignin));

  @override
  _$AuthEventSignin get _value => super._value as _$AuthEventSignin;

  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(_$AuthEventSignin(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as OAuthCredential,
    ));
  }
}

/// @nodoc

class _$AuthEventSignin implements AuthEventSignin {
  const _$AuthEventSignin({required this.auth});

  @override
  final OAuthCredential auth;

  @override
  String toString() {
    return 'AuthEvent.signIn(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignin &&
            const DeepCollectionEquality().equals(other.auth, auth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(auth));

  @JsonKey(ignore: true)
  @override
  _$$AuthEventSigninCopyWith<_$AuthEventSignin> get copyWith =>
      __$$AuthEventSigninCopyWithImpl<_$AuthEventSignin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkExistUser,
    required TResult Function(OAuthCredential auth) signIn,
    required TResult Function() logout,
  }) {
    return signIn(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
  }) {
    return signIn?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckExistUser value) checkExistUser,
    required TResult Function(AuthEventSignin value) signIn,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignin implements AuthEvent {
  const factory AuthEventSignin({required final OAuthCredential auth}) =
      _$AuthEventSignin;

  OAuthCredential get auth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthEventSigninCopyWith<_$AuthEventSignin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventLogoutCopyWith<$Res> {
  factory _$$AuthEventLogoutCopyWith(
          _$AuthEventLogout value, $Res Function(_$AuthEventLogout) then) =
      __$$AuthEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthEventLogoutCopyWith<$Res> {
  __$$AuthEventLogoutCopyWithImpl(
      _$AuthEventLogout _value, $Res Function(_$AuthEventLogout) _then)
      : super(_value, (v) => _then(v as _$AuthEventLogout));

  @override
  _$AuthEventLogout get _value => super._value as _$AuthEventLogout;
}

/// @nodoc

class _$AuthEventLogout implements AuthEventLogout {
  const _$AuthEventLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkExistUser,
    required TResult Function(OAuthCredential auth) signIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkExistUser,
    TResult Function(OAuthCredential auth)? signIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventCheckExistUser value) checkExistUser,
    required TResult Function(AuthEventSignin value) signIn,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventCheckExistUser value)? checkExistUser,
    TResult Function(AuthEventSignin value)? signIn,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogout;
}
