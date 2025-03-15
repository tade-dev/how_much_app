part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default("") String email,
    @Default("") String password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus loginStatus,
    @Default(false) bool showPassword,
    AuthModel? authModel,
    AuthUser? authUser
  }) = _Initial;

  bool get isLoginButtonEnabled => email.isNotEmpty && password.isNotEmpty;

}
