part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState.initial({

    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus updateProfileStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus changePasswordStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus uploadImageStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus deleteAccountStatus,
    File? selectedImage,
    TextEditingController? fullName,
    TextEditingController? emailAddress,
    TextEditingController? gender,
    TextEditingController? certifications,
    TextEditingController? cvLink,
    TextEditingController? developerStack,
    TextEditingController? developerTitle,
    TextEditingController? portfolioLink,
    TextEditingController? yearsOfExperience,
    UserData? userData

  }) = _Initial;
}
