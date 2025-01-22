part of 'auth_cubit.dart';

@freezed
sealed class AuthState with _$AuthState{
  const AuthState._();
  const factory AuthState.initial({

    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default(false) bool loginStatus,
    @Default(false) bool signUpStatus,
    @Default(false) bool forgotPasswordStatus,
    @Default(false) bool resetPasswordStatus,
    @Default(false) bool verifyStatus,
    @Default(false) bool showPassword,
    @Default(VerifyEmailType.email) VerifyEmailType verifyType

  }) = AuthInitial;

  bool get isLoginButtonEnabled => email.isNotEmpty && password.isNotEmpty;
  bool get isSignUpButtonEnabled => email.isNotEmpty && password.isNotEmpty;

}
