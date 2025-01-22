// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  bool get loginStatus => throw _privateConstructorUsedError;
  bool get signUpStatus => throw _privateConstructorUsedError;
  bool get forgotPasswordStatus => throw _privateConstructorUsedError;
  bool get resetPasswordStatus => throw _privateConstructorUsedError;
  bool get verifyStatus => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  VerifyEmailType get verifyType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      bool loginStatus,
      bool signUpStatus,
      bool forgotPasswordStatus,
      bool resetPasswordStatus,
      bool verifyStatus,
      bool showPassword,
      VerifyEmailType verifyType});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? loginStatus = null,
    Object? signUpStatus = null,
    Object? forgotPasswordStatus = null,
    Object? resetPasswordStatus = null,
    Object? verifyStatus = null,
    Object? showPassword = null,
    Object? verifyType = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyType: null == verifyType
          ? _value.verifyType
          : verifyType // ignore: cast_nullable_to_non_nullable
              as VerifyEmailType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      bool loginStatus,
      bool signUpStatus,
      bool forgotPasswordStatus,
      bool resetPasswordStatus,
      bool verifyStatus,
      bool showPassword,
      VerifyEmailType verifyType});
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? loginStatus = null,
    Object? signUpStatus = null,
    Object? forgotPasswordStatus = null,
    Object? resetPasswordStatus = null,
    Object? verifyStatus = null,
    Object? showPassword = null,
    Object? verifyType = null,
  }) {
    return _then(_$AuthInitialImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpStatus: null == signUpStatus
          ? _value.signUpStatus
          : signUpStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyType: null == verifyType
          ? _value.verifyType
          : verifyType // ignore: cast_nullable_to_non_nullable
              as VerifyEmailType,
    ));
  }
}

/// @nodoc

class _$AuthInitialImpl extends AuthInitial {
  const _$AuthInitialImpl(
      {this.email = "",
      this.password = "",
      this.confirmPassword = "",
      this.loginStatus = false,
      this.signUpStatus = false,
      this.forgotPasswordStatus = false,
      this.resetPasswordStatus = false,
      this.verifyStatus = false,
      this.showPassword = false,
      this.verifyType = VerifyEmailType.email})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final bool loginStatus;
  @override
  @JsonKey()
  final bool signUpStatus;
  @override
  @JsonKey()
  final bool forgotPasswordStatus;
  @override
  @JsonKey()
  final bool resetPasswordStatus;
  @override
  @JsonKey()
  final bool verifyStatus;
  @override
  @JsonKey()
  final bool showPassword;
  @override
  @JsonKey()
  final VerifyEmailType verifyType;

  @override
  String toString() {
    return 'AuthState.initial(email: $email, password: $password, confirmPassword: $confirmPassword, loginStatus: $loginStatus, signUpStatus: $signUpStatus, forgotPasswordStatus: $forgotPasswordStatus, resetPasswordStatus: $resetPasswordStatus, verifyStatus: $verifyStatus, showPassword: $showPassword, verifyType: $verifyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInitialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.signUpStatus, signUpStatus) ||
                other.signUpStatus == signUpStatus) &&
            (identical(other.forgotPasswordStatus, forgotPasswordStatus) ||
                other.forgotPasswordStatus == forgotPasswordStatus) &&
            (identical(other.resetPasswordStatus, resetPasswordStatus) ||
                other.resetPasswordStatus == resetPasswordStatus) &&
            (identical(other.verifyStatus, verifyStatus) ||
                other.verifyStatus == verifyStatus) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.verifyType, verifyType) ||
                other.verifyType == verifyType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      confirmPassword,
      loginStatus,
      signUpStatus,
      forgotPasswordStatus,
      resetPasswordStatus,
      verifyStatus,
      showPassword,
      verifyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInitialImplCopyWith<_$AuthInitialImpl> get copyWith =>
      __$$AuthInitialImplCopyWithImpl<_$AuthInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)
        initial,
  }) {
    return initial(
        email,
        password,
        confirmPassword,
        loginStatus,
        signUpStatus,
        forgotPasswordStatus,
        resetPasswordStatus,
        verifyStatus,
        showPassword,
        verifyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)?
        initial,
  }) {
    return initial?.call(
        email,
        password,
        confirmPassword,
        loginStatus,
        signUpStatus,
        forgotPasswordStatus,
        resetPasswordStatus,
        verifyStatus,
        showPassword,
        verifyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            bool loginStatus,
            bool signUpStatus,
            bool forgotPasswordStatus,
            bool resetPasswordStatus,
            bool verifyStatus,
            bool showPassword,
            VerifyEmailType verifyType)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          email,
          password,
          confirmPassword,
          loginStatus,
          signUpStatus,
          forgotPasswordStatus,
          resetPasswordStatus,
          verifyStatus,
          showPassword,
          verifyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial extends AuthState {
  const factory AuthInitial(
      {final String email,
      final String password,
      final String confirmPassword,
      final bool loginStatus,
      final bool signUpStatus,
      final bool forgotPasswordStatus,
      final bool resetPasswordStatus,
      final bool verifyStatus,
      final bool showPassword,
      final VerifyEmailType verifyType}) = _$AuthInitialImpl;
  const AuthInitial._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  bool get loginStatus;
  @override
  bool get signUpStatus;
  @override
  bool get forgotPasswordStatus;
  @override
  bool get resetPasswordStatus;
  @override
  bool get verifyStatus;
  @override
  bool get showPassword;
  @override
  VerifyEmailType get verifyType;
  @override
  @JsonKey(ignore: true)
  _$$AuthInitialImplCopyWith<_$AuthInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
