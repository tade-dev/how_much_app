part of 'auth_cubit.dart';

@freezed
sealed class AuthState with _$AuthState{
  const AuthState._();
  const factory AuthState.initial({

    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String pinCode,
    @Default("") String fullName,
    @Default(FormzSubmissionStatus.initial) bool loginStatus,
    @Default(FormzSubmissionStatus.initial) bool signUpStatus,
    @Default(FormzSubmissionStatus.initial) bool forgotPasswordStatus,
    @Default(FormzSubmissionStatus.initial) bool resetPasswordStatus,
    @Default(FormzSubmissionStatus.initial) bool verifyStatus,
    @Default(FormzSubmissionStatus.initial) bool showPassword,
    @Default(VerifyEmailType.email) VerifyEmailType verifyType,
  }) = AuthInitial;

  bool get isLoginButtonEnabled => email.isNotEmpty && password.isNotEmpty;
  bool get isSignUpButtonEnabled => email.isNotEmpty && password.isNotEmpty && fullName.isNotEmpty;
  bool get isForgotPasswordButtonEnabled => email.isNotEmpty;
  bool get isPasswordButtonEnabled => (password.isNotEmpty && confirmPassword.isNotEmpty) || (password != confirmPassword);
  bool get isVerificationButtonEnabled => pinCode.isNotEmpty;
  String get firstname => fullName.split(" ").first;
  String get lastname => fullName.split(" ").last;

}
