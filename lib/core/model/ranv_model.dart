class RequestParams {
  RequestParams({
    this.password,
    this.newPassword,
    this.otpCode,
    this.email,
    this.currentPassword,
    this.confirmPassword,
    this.fullName,
  });

  final String? email;
  final String? currentPassword;
  final String? confirmPassword;
  final String? password;
  final String? newPassword;
  final String? otpCode;
  final String? fullName;
}
