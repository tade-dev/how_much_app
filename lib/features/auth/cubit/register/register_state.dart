part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState.initial({
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String fullName,
    @Default("") String selectedGender,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus signUpStatus,
    @Default(false) bool showPassword,
  }) = _Initial;

  bool get isRegisterButtonEnabled => email.isNotEmpty && password.isNotEmpty && fullName.isNotEmpty && selectedGender.isNotEmpty;
  List<String> get genders => [
    "Male",
    "Female"
  ];
  String get firstname => fullName.split(" ").first;
  String get lastname => fullName.split(" ").last;

}
