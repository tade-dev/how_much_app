// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetProfileModel _$SetProfileModelFromJson(Map<String, dynamic> json) {
  return _SetProfileModel.fromJson(json);
}

/// @nodoc
mixin _$SetProfileModel {
  int? get yearsOfExperience => throw _privateConstructorUsedError;
  String? get developerTitle => throw _privateConstructorUsedError;
  List<String>? get developerStack => throw _privateConstructorUsedError;
  List<String>? get certifications => throw _privateConstructorUsedError;
  String? get portfolioLink => throw _privateConstructorUsedError;
  String? get cvLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetProfileModelCopyWith<SetProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetProfileModelCopyWith<$Res> {
  factory $SetProfileModelCopyWith(
          SetProfileModel value, $Res Function(SetProfileModel) then) =
      _$SetProfileModelCopyWithImpl<$Res, SetProfileModel>;
  @useResult
  $Res call(
      {int? yearsOfExperience,
      String? developerTitle,
      List<String>? developerStack,
      List<String>? certifications,
      String? portfolioLink,
      String? cvLink});
}

/// @nodoc
class _$SetProfileModelCopyWithImpl<$Res, $Val extends SetProfileModel>
    implements $SetProfileModelCopyWith<$Res> {
  _$SetProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearsOfExperience = freezed,
    Object? developerTitle = freezed,
    Object? developerStack = freezed,
    Object? certifications = freezed,
    Object? portfolioLink = freezed,
    Object? cvLink = freezed,
  }) {
    return _then(_value.copyWith(
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      developerTitle: freezed == developerTitle
          ? _value.developerTitle
          : developerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      developerStack: freezed == developerStack
          ? _value.developerStack
          : developerStack // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      certifications: freezed == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      portfolioLink: freezed == portfolioLink
          ? _value.portfolioLink
          : portfolioLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cvLink: freezed == cvLink
          ? _value.cvLink
          : cvLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetProfileModelImplCopyWith<$Res>
    implements $SetProfileModelCopyWith<$Res> {
  factory _$$SetProfileModelImplCopyWith(_$SetProfileModelImpl value,
          $Res Function(_$SetProfileModelImpl) then) =
      __$$SetProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? yearsOfExperience,
      String? developerTitle,
      List<String>? developerStack,
      List<String>? certifications,
      String? portfolioLink,
      String? cvLink});
}

/// @nodoc
class __$$SetProfileModelImplCopyWithImpl<$Res>
    extends _$SetProfileModelCopyWithImpl<$Res, _$SetProfileModelImpl>
    implements _$$SetProfileModelImplCopyWith<$Res> {
  __$$SetProfileModelImplCopyWithImpl(
      _$SetProfileModelImpl _value, $Res Function(_$SetProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearsOfExperience = freezed,
    Object? developerTitle = freezed,
    Object? developerStack = freezed,
    Object? certifications = freezed,
    Object? portfolioLink = freezed,
    Object? cvLink = freezed,
  }) {
    return _then(_$SetProfileModelImpl(
      yearsOfExperience: freezed == yearsOfExperience
          ? _value.yearsOfExperience
          : yearsOfExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      developerTitle: freezed == developerTitle
          ? _value.developerTitle
          : developerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      developerStack: freezed == developerStack
          ? _value._developerStack
          : developerStack // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      certifications: freezed == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      portfolioLink: freezed == portfolioLink
          ? _value.portfolioLink
          : portfolioLink // ignore: cast_nullable_to_non_nullable
              as String?,
      cvLink: freezed == cvLink
          ? _value.cvLink
          : cvLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetProfileModelImpl implements _SetProfileModel {
  const _$SetProfileModelImpl(
      {this.yearsOfExperience,
      this.developerTitle,
      final List<String>? developerStack,
      final List<String>? certifications,
      this.portfolioLink,
      this.cvLink})
      : _developerStack = developerStack,
        _certifications = certifications;

  factory _$SetProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetProfileModelImplFromJson(json);

  @override
  final int? yearsOfExperience;
  @override
  final String? developerTitle;
  final List<String>? _developerStack;
  @override
  List<String>? get developerStack {
    final value = _developerStack;
    if (value == null) return null;
    if (_developerStack is EqualUnmodifiableListView) return _developerStack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _certifications;
  @override
  List<String>? get certifications {
    final value = _certifications;
    if (value == null) return null;
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? portfolioLink;
  @override
  final String? cvLink;

  @override
  String toString() {
    return 'SetProfileModel(yearsOfExperience: $yearsOfExperience, developerTitle: $developerTitle, developerStack: $developerStack, certifications: $certifications, portfolioLink: $portfolioLink, cvLink: $cvLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProfileModelImpl &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.developerTitle, developerTitle) ||
                other.developerTitle == developerTitle) &&
            const DeepCollectionEquality()
                .equals(other._developerStack, _developerStack) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            (identical(other.portfolioLink, portfolioLink) ||
                other.portfolioLink == portfolioLink) &&
            (identical(other.cvLink, cvLink) || other.cvLink == cvLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      yearsOfExperience,
      developerTitle,
      const DeepCollectionEquality().hash(_developerStack),
      const DeepCollectionEquality().hash(_certifications),
      portfolioLink,
      cvLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProfileModelImplCopyWith<_$SetProfileModelImpl> get copyWith =>
      __$$SetProfileModelImplCopyWithImpl<_$SetProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetProfileModelImplToJson(
      this,
    );
  }
}

abstract class _SetProfileModel implements SetProfileModel {
  const factory _SetProfileModel(
      {final int? yearsOfExperience,
      final String? developerTitle,
      final List<String>? developerStack,
      final List<String>? certifications,
      final String? portfolioLink,
      final String? cvLink}) = _$SetProfileModelImpl;

  factory _SetProfileModel.fromJson(Map<String, dynamic> json) =
      _$SetProfileModelImpl.fromJson;

  @override
  int? get yearsOfExperience;
  @override
  String? get developerTitle;
  @override
  List<String>? get developerStack;
  @override
  List<String>? get certifications;
  @override
  String? get portfolioLink;
  @override
  String? get cvLink;
  @override
  @JsonKey(ignore: true)
  _$$SetProfileModelImplCopyWith<_$SetProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
