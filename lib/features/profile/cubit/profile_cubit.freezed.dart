// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  FormzSubmissionStatus get updateProfileStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get changePasswordStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get uploadImageStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get deleteAccountStatus =>
      throw _privateConstructorUsedError;
  File? get selectedImage => throw _privateConstructorUsedError;
  TextEditingController? get fullName => throw _privateConstructorUsedError;
  TextEditingController? get emailAddress => throw _privateConstructorUsedError;
  TextEditingController? get gender => throw _privateConstructorUsedError;
  TextEditingController? get certifications =>
      throw _privateConstructorUsedError;
  TextEditingController? get cvLink => throw _privateConstructorUsedError;
  TextEditingController? get developerStack =>
      throw _privateConstructorUsedError;
  TextEditingController? get developerTitle =>
      throw _privateConstructorUsedError;
  TextEditingController? get portfolioLink =>
      throw _privateConstructorUsedError;
  TextEditingController? get yearsOfExperience =>
      throw _privateConstructorUsedError;
  UserData? get userData => throw _privateConstructorUsedError;
  EditProfileCurrentState get editProfileCurrentState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus updateProfileStatus,
      FormzSubmissionStatus changePasswordStatus,
      FormzSubmissionStatus uploadImageStatus,
      FormzSubmissionStatus deleteAccountStatus,
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
      UserData? userData,
      EditProfileCurrentState editProfileCurrentState});

  $UserDataCopyWith<$Res>? get userData;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileStatus = null,
    Object? changePasswordStatus = null,
    Object? uploadImageStatus = null,
    Object? deleteAccountStatus = null,
    Object? selectedImage = freezed,
    Object? fullName = freezed,
    Object? emailAddress = freezed,
    Object? gender = freezed,
    Object? certifications = freezed,
    Object? cvLink = freezed,
    Object? developerStack = freezed,
    Object? developerTitle = freezed,
    Object? portfolioLink = freezed,
    Object? yearsOfExperience = freezed,
    Object? userData = freezed,
    Object? editProfileCurrentState = null,
  }) {
    return _then(_value.copyWith(
      updateProfileStatus: null == updateProfileStatus
          ? _value.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      changePasswordStatus: null == changePasswordStatus
          ? _value.changePasswordStatus
          : changePasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      uploadImageStatus: null == uploadImageStatus
          ? _value.uploadImageStatus
          : uploadImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      deleteAccountStatus: null == deleteAccountStatus
          ? _value.deleteAccountStatus
          : deleteAccountStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      cvLink: freezed == cvLink
          ? _value.cvLink
          : cvLink // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      developerStack: freezed == developerStack
          ? _value.developerStack
          : developerStack // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      developerTitle: freezed == developerTitle
          ? _value.developerTitle
          : developerTitle // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      portfolioLink: freezed == portfolioLink
          ? _value.portfolioLink
          : portfolioLink // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      editProfileCurrentState: null == editProfileCurrentState
          ? _value.editProfileCurrentState
          : editProfileCurrentState // ignore: cast_nullable_to_non_nullable
              as EditProfileCurrentState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus updateProfileStatus,
      FormzSubmissionStatus changePasswordStatus,
      FormzSubmissionStatus uploadImageStatus,
      FormzSubmissionStatus deleteAccountStatus,
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
      UserData? userData,
      EditProfileCurrentState editProfileCurrentState});

  @override
  $UserDataCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileStatus = null,
    Object? changePasswordStatus = null,
    Object? uploadImageStatus = null,
    Object? deleteAccountStatus = null,
    Object? selectedImage = freezed,
    Object? fullName = freezed,
    Object? emailAddress = freezed,
    Object? gender = freezed,
    Object? certifications = freezed,
    Object? cvLink = freezed,
    Object? developerStack = freezed,
    Object? developerTitle = freezed,
    Object? portfolioLink = freezed,
    Object? yearsOfExperience = freezed,
    Object? userData = freezed,
    Object? editProfileCurrentState = null,
  }) {
    return _then(_$InitialImpl(
      updateProfileStatus: null == updateProfileStatus
          ? _value.updateProfileStatus
          : updateProfileStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      changePasswordStatus: null == changePasswordStatus
          ? _value.changePasswordStatus
          : changePasswordStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      uploadImageStatus: null == uploadImageStatus
          ? _value.uploadImageStatus
          : uploadImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      deleteAccountStatus: null == deleteAccountStatus
          ? _value.deleteAccountStatus
          : deleteAccountStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      cvLink: freezed == cvLink
          ? _value.cvLink
          : cvLink // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      developerStack: freezed == developerStack
          ? _value.developerStack
          : developerStack // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      developerTitle: freezed == developerTitle
          ? _value.developerTitle
          : developerTitle // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      portfolioLink: freezed == portfolioLink
          ? _value.portfolioLink
          : portfolioLink // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      editProfileCurrentState: null == editProfileCurrentState
          ? _value.editProfileCurrentState
          : editProfileCurrentState // ignore: cast_nullable_to_non_nullable
              as EditProfileCurrentState,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.updateProfileStatus = FormzSubmissionStatus.initial,
      this.changePasswordStatus = FormzSubmissionStatus.initial,
      this.uploadImageStatus = FormzSubmissionStatus.initial,
      this.deleteAccountStatus = FormzSubmissionStatus.initial,
      this.selectedImage,
      this.fullName,
      this.emailAddress,
      this.gender,
      this.certifications,
      this.cvLink,
      this.developerStack,
      this.developerTitle,
      this.portfolioLink,
      this.yearsOfExperience,
      this.userData,
      this.editProfileCurrentState = EditProfileCurrentState.dashboard})
      : super._();

  @override
  @JsonKey()
  final FormzSubmissionStatus updateProfileStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus changePasswordStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus uploadImageStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus deleteAccountStatus;
  @override
  final File? selectedImage;
  @override
  final TextEditingController? fullName;
  @override
  final TextEditingController? emailAddress;
  @override
  final TextEditingController? gender;
  @override
  final TextEditingController? certifications;
  @override
  final TextEditingController? cvLink;
  @override
  final TextEditingController? developerStack;
  @override
  final TextEditingController? developerTitle;
  @override
  final TextEditingController? portfolioLink;
  @override
  final TextEditingController? yearsOfExperience;
  @override
  final UserData? userData;
  @override
  @JsonKey()
  final EditProfileCurrentState editProfileCurrentState;

  @override
  String toString() {
    return 'ProfileState(updateProfileStatus: $updateProfileStatus, changePasswordStatus: $changePasswordStatus, uploadImageStatus: $uploadImageStatus, deleteAccountStatus: $deleteAccountStatus, selectedImage: $selectedImage, fullName: $fullName, emailAddress: $emailAddress, gender: $gender, certifications: $certifications, cvLink: $cvLink, developerStack: $developerStack, developerTitle: $developerTitle, portfolioLink: $portfolioLink, yearsOfExperience: $yearsOfExperience, userData: $userData, editProfileCurrentState: $editProfileCurrentState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.updateProfileStatus, updateProfileStatus) ||
                other.updateProfileStatus == updateProfileStatus) &&
            (identical(other.changePasswordStatus, changePasswordStatus) ||
                other.changePasswordStatus == changePasswordStatus) &&
            (identical(other.uploadImageStatus, uploadImageStatus) ||
                other.uploadImageStatus == uploadImageStatus) &&
            (identical(other.deleteAccountStatus, deleteAccountStatus) ||
                other.deleteAccountStatus == deleteAccountStatus) &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.certifications, certifications) ||
                other.certifications == certifications) &&
            (identical(other.cvLink, cvLink) || other.cvLink == cvLink) &&
            (identical(other.developerStack, developerStack) ||
                other.developerStack == developerStack) &&
            (identical(other.developerTitle, developerTitle) ||
                other.developerTitle == developerTitle) &&
            (identical(other.portfolioLink, portfolioLink) ||
                other.portfolioLink == portfolioLink) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(
                    other.editProfileCurrentState, editProfileCurrentState) ||
                other.editProfileCurrentState == editProfileCurrentState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      updateProfileStatus,
      changePasswordStatus,
      uploadImageStatus,
      deleteAccountStatus,
      selectedImage,
      fullName,
      emailAddress,
      gender,
      certifications,
      cvLink,
      developerStack,
      developerTitle,
      portfolioLink,
      yearsOfExperience,
      userData,
      editProfileCurrentState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial extends ProfileState {
  const factory _Initial(
      {final FormzSubmissionStatus updateProfileStatus,
      final FormzSubmissionStatus changePasswordStatus,
      final FormzSubmissionStatus uploadImageStatus,
      final FormzSubmissionStatus deleteAccountStatus,
      final File? selectedImage,
      final TextEditingController? fullName,
      final TextEditingController? emailAddress,
      final TextEditingController? gender,
      final TextEditingController? certifications,
      final TextEditingController? cvLink,
      final TextEditingController? developerStack,
      final TextEditingController? developerTitle,
      final TextEditingController? portfolioLink,
      final TextEditingController? yearsOfExperience,
      final UserData? userData,
      final EditProfileCurrentState editProfileCurrentState}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  FormzSubmissionStatus get updateProfileStatus;
  @override
  FormzSubmissionStatus get changePasswordStatus;
  @override
  FormzSubmissionStatus get uploadImageStatus;
  @override
  FormzSubmissionStatus get deleteAccountStatus;
  @override
  File? get selectedImage;
  @override
  TextEditingController? get fullName;
  @override
  TextEditingController? get emailAddress;
  @override
  TextEditingController? get gender;
  @override
  TextEditingController? get certifications;
  @override
  TextEditingController? get cvLink;
  @override
  TextEditingController? get developerStack;
  @override
  TextEditingController? get developerTitle;
  @override
  TextEditingController? get portfolioLink;
  @override
  TextEditingController? get yearsOfExperience;
  @override
  UserData? get userData;
  @override
  EditProfileCurrentState get editProfileCurrentState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
