part of 'verifcation_cubit.dart';

@freezed
class VerifcationState with _$VerifcationState {
  const VerifcationState._();
  const factory VerifcationState.initial({
    @Default("") String pinCode,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus verifyStatus,
    @Default(VerifyEmailType.email) VerifyEmailType verifyType,
  }) = _Initial;

  bool get isVerifyButtonEnabled => pinCode.isNotEmpty;

}
