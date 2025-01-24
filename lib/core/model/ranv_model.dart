class RequestParams {
  RequestParams({
    this.password,
    this.newPassword,
    this.otpCode,
    this.email,
    this.currentPassword,
    this.confirmPassword,
    this.fullName,
    this.firstname,
    this.lastname,
    this.gender,
    this.image
  });

  final String? email;
  final String? currentPassword;
  final String? confirmPassword;
  final String? password;
  final String? newPassword;
  final String? otpCode;
  final String? firstname;
  final String? lastname;
  final String? fullName;
  final String? gender;
  final String? image;
}
