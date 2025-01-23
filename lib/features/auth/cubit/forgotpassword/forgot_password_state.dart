part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();
  const factory ForgotPasswordState.initial({
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String newPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus forgotPasswordStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus resetPasswordStatus,
    @Default(false) bool showPassword,
  }) = _Initial;

  bool get isForgotPasswordButtonEnabled => email.isNotEmpty;
  bool get isResetPasswordButtonEnabled => password.isNotEmpty && confirmPassword.isNotEmpty && (password == confirmPassword);

}
