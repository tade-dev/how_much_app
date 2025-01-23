// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifcation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifcationState {
  String get pinCode => throw _privateConstructorUsedError;
  FormzSubmissionStatus get verifyStatus => throw _privateConstructorUsedError;
  VerifyEmailType get verifyType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode,
            FormzSubmissionStatus verifyStatus, VerifyEmailType verifyType)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, FormzSubmissionStatus verifyStatus,
            VerifyEmailType verifyType)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, FormzSubmissionStatus verifyStatus,
            VerifyEmailType verifyType)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifcationStateCopyWith<VerifcationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifcationStateCopyWith<$Res> {
  factory $VerifcationStateCopyWith(
          VerifcationState value, $Res Function(VerifcationState) then) =
      _$VerifcationStateCopyWithImpl<$Res, VerifcationState>;
  @useResult
  $Res call(
      {String pinCode,
      FormzSubmissionStatus verifyStatus,
      VerifyEmailType verifyType});
}

/// @nodoc
class _$VerifcationStateCopyWithImpl<$Res, $Val extends VerifcationState>
    implements $VerifcationStateCopyWith<$Res> {
  _$VerifcationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? verifyStatus = null,
    Object? verifyType = null,
  }) {
    return _then(_value.copyWith(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      verifyType: null == verifyType
          ? _value.verifyType
          : verifyType // ignore: cast_nullable_to_non_nullable
              as VerifyEmailType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VerifcationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pinCode,
      FormzSubmissionStatus verifyStatus,
      VerifyEmailType verifyType});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VerifcationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? verifyStatus = null,
    Object? verifyType = null,
  }) {
    return _then(_$InitialImpl(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      verifyType: null == verifyType
          ? _value.verifyType
          : verifyType // ignore: cast_nullable_to_non_nullable
              as VerifyEmailType,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.pinCode = "",
      this.verifyStatus = FormzSubmissionStatus.initial,
      this.verifyType = VerifyEmailType.email})
      : super._();

  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final FormzSubmissionStatus verifyStatus;
  @override
  @JsonKey()
  final VerifyEmailType verifyType;

  @override
  String toString() {
    return 'VerifcationState.initial(pinCode: $pinCode, verifyStatus: $verifyStatus, verifyType: $verifyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.verifyStatus, verifyStatus) ||
                other.verifyStatus == verifyStatus) &&
            (identical(other.verifyType, verifyType) ||
                other.verifyType == verifyType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pinCode, verifyStatus, verifyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode,
            FormzSubmissionStatus verifyStatus, VerifyEmailType verifyType)
        initial,
  }) {
    return initial(pinCode, verifyStatus, verifyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, FormzSubmissionStatus verifyStatus,
            VerifyEmailType verifyType)?
        initial,
  }) {
    return initial?.call(pinCode, verifyStatus, verifyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, FormzSubmissionStatus verifyStatus,
            VerifyEmailType verifyType)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pinCode, verifyStatus, verifyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends VerifcationState {
  const factory _Initial(
      {final String pinCode,
      final FormzSubmissionStatus verifyStatus,
      final VerifyEmailType verifyType}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  String get pinCode;
  @override
  FormzSubmissionStatus get verifyStatus;
  @override
  VerifyEmailType get verifyType;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
