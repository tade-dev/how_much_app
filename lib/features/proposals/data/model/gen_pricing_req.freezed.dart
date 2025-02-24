// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_pricing_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenPricingReq _$GenPricingReqFromJson(Map<String, dynamic> json) {
  return _GenPricingReq.fromJson(json);
}

/// @nodoc
mixin _$GenPricingReq {
  PricingDetails? get pricingDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenPricingReqCopyWith<GenPricingReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenPricingReqCopyWith<$Res> {
  factory $GenPricingReqCopyWith(
          GenPricingReq value, $Res Function(GenPricingReq) then) =
      _$GenPricingReqCopyWithImpl<$Res, GenPricingReq>;
  @useResult
  $Res call({PricingDetails? pricingDetails});

  $PricingDetailsCopyWith<$Res>? get pricingDetails;
}

/// @nodoc
class _$GenPricingReqCopyWithImpl<$Res, $Val extends GenPricingReq>
    implements $GenPricingReqCopyWith<$Res> {
  _$GenPricingReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      pricingDetails: freezed == pricingDetails
          ? _value.pricingDetails
          : pricingDetails // ignore: cast_nullable_to_non_nullable
              as PricingDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PricingDetailsCopyWith<$Res>? get pricingDetails {
    if (_value.pricingDetails == null) {
      return null;
    }

    return $PricingDetailsCopyWith<$Res>(_value.pricingDetails!, (value) {
      return _then(_value.copyWith(pricingDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenPricingReqImplCopyWith<$Res>
    implements $GenPricingReqCopyWith<$Res> {
  factory _$$GenPricingReqImplCopyWith(
          _$GenPricingReqImpl value, $Res Function(_$GenPricingReqImpl) then) =
      __$$GenPricingReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PricingDetails? pricingDetails});

  @override
  $PricingDetailsCopyWith<$Res>? get pricingDetails;
}

/// @nodoc
class __$$GenPricingReqImplCopyWithImpl<$Res>
    extends _$GenPricingReqCopyWithImpl<$Res, _$GenPricingReqImpl>
    implements _$$GenPricingReqImplCopyWith<$Res> {
  __$$GenPricingReqImplCopyWithImpl(
      _$GenPricingReqImpl _value, $Res Function(_$GenPricingReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pricingDetails = freezed,
  }) {
    return _then(_$GenPricingReqImpl(
      pricingDetails: freezed == pricingDetails
          ? _value.pricingDetails
          : pricingDetails // ignore: cast_nullable_to_non_nullable
              as PricingDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenPricingReqImpl implements _GenPricingReq {
  const _$GenPricingReqImpl({this.pricingDetails});

  factory _$GenPricingReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenPricingReqImplFromJson(json);

  @override
  final PricingDetails? pricingDetails;

  @override
  String toString() {
    return 'GenPricingReq(pricingDetails: $pricingDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenPricingReqImpl &&
            (identical(other.pricingDetails, pricingDetails) ||
                other.pricingDetails == pricingDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pricingDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenPricingReqImplCopyWith<_$GenPricingReqImpl> get copyWith =>
      __$$GenPricingReqImplCopyWithImpl<_$GenPricingReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenPricingReqImplToJson(
      this,
    );
  }
}

abstract class _GenPricingReq implements GenPricingReq {
  const factory _GenPricingReq({final PricingDetails? pricingDetails}) =
      _$GenPricingReqImpl;

  factory _GenPricingReq.fromJson(Map<String, dynamic> json) =
      _$GenPricingReqImpl.fromJson;

  @override
  PricingDetails? get pricingDetails;
  @override
  @JsonKey(ignore: true)
  _$$GenPricingReqImplCopyWith<_$GenPricingReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingDetails _$PricingDetailsFromJson(Map<String, dynamic> json) {
  return _PricingDetails.fromJson(json);
}

/// @nodoc
mixin _$PricingDetails {
  String? get projectDescription => throw _privateConstructorUsedError;
  String? get requiredTimeline => throw _privateConstructorUsedError;
  int? get approxNumberOfScreens => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get estimatedCost => throw _privateConstructorUsedError;
  List<String>? get advancedFeatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingDetailsCopyWith<PricingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingDetailsCopyWith<$Res> {
  factory $PricingDetailsCopyWith(
          PricingDetails value, $Res Function(PricingDetails) then) =
      _$PricingDetailsCopyWithImpl<$Res, PricingDetails>;
  @useResult
  $Res call(
      {String? projectDescription,
      String? requiredTimeline,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      List<String>? advancedFeatures});
}

/// @nodoc
class _$PricingDetailsCopyWithImpl<$Res, $Val extends PricingDetails>
    implements $PricingDetailsCopyWith<$Res> {
  _$PricingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? advancedFeatures = freezed,
  }) {
    return _then(_value.copyWith(
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredTimeline: freezed == requiredTimeline
          ? _value.requiredTimeline
          : requiredTimeline // ignore: cast_nullable_to_non_nullable
              as String?,
      approxNumberOfScreens: freezed == approxNumberOfScreens
          ? _value.approxNumberOfScreens
          : approxNumberOfScreens // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as int?,
      advancedFeatures: freezed == advancedFeatures
          ? _value.advancedFeatures
          : advancedFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricingDetailsImplCopyWith<$Res>
    implements $PricingDetailsCopyWith<$Res> {
  factory _$$PricingDetailsImplCopyWith(_$PricingDetailsImpl value,
          $Res Function(_$PricingDetailsImpl) then) =
      __$$PricingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? projectDescription,
      String? requiredTimeline,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      List<String>? advancedFeatures});
}

/// @nodoc
class __$$PricingDetailsImplCopyWithImpl<$Res>
    extends _$PricingDetailsCopyWithImpl<$Res, _$PricingDetailsImpl>
    implements _$$PricingDetailsImplCopyWith<$Res> {
  __$$PricingDetailsImplCopyWithImpl(
      _$PricingDetailsImpl _value, $Res Function(_$PricingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? advancedFeatures = freezed,
  }) {
    return _then(_$PricingDetailsImpl(
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredTimeline: freezed == requiredTimeline
          ? _value.requiredTimeline
          : requiredTimeline // ignore: cast_nullable_to_non_nullable
              as String?,
      approxNumberOfScreens: freezed == approxNumberOfScreens
          ? _value.approxNumberOfScreens
          : approxNumberOfScreens // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as int?,
      advancedFeatures: freezed == advancedFeatures
          ? _value._advancedFeatures
          : advancedFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingDetailsImpl implements _PricingDetails {
  const _$PricingDetailsImpl(
      {this.projectDescription,
      this.requiredTimeline,
      this.approxNumberOfScreens,
      this.currency,
      this.estimatedCost,
      final List<String>? advancedFeatures})
      : _advancedFeatures = advancedFeatures;

  factory _$PricingDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingDetailsImplFromJson(json);

  @override
  final String? projectDescription;
  @override
  final String? requiredTimeline;
  @override
  final int? approxNumberOfScreens;
  @override
  final String? currency;
  @override
  final int? estimatedCost;
  final List<String>? _advancedFeatures;
  @override
  List<String>? get advancedFeatures {
    final value = _advancedFeatures;
    if (value == null) return null;
    if (_advancedFeatures is EqualUnmodifiableListView)
      return _advancedFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PricingDetails(projectDescription: $projectDescription, requiredTimeline: $requiredTimeline, approxNumberOfScreens: $approxNumberOfScreens, currency: $currency, estimatedCost: $estimatedCost, advancedFeatures: $advancedFeatures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingDetailsImpl &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.requiredTimeline, requiredTimeline) ||
                other.requiredTimeline == requiredTimeline) &&
            (identical(other.approxNumberOfScreens, approxNumberOfScreens) ||
                other.approxNumberOfScreens == approxNumberOfScreens) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            const DeepCollectionEquality()
                .equals(other._advancedFeatures, _advancedFeatures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectDescription,
      requiredTimeline,
      approxNumberOfScreens,
      currency,
      estimatedCost,
      const DeepCollectionEquality().hash(_advancedFeatures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingDetailsImplCopyWith<_$PricingDetailsImpl> get copyWith =>
      __$$PricingDetailsImplCopyWithImpl<_$PricingDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingDetailsImplToJson(
      this,
    );
  }
}

abstract class _PricingDetails implements PricingDetails {
  const factory _PricingDetails(
      {final String? projectDescription,
      final String? requiredTimeline,
      final int? approxNumberOfScreens,
      final String? currency,
      final int? estimatedCost,
      final List<String>? advancedFeatures}) = _$PricingDetailsImpl;

  factory _PricingDetails.fromJson(Map<String, dynamic> json) =
      _$PricingDetailsImpl.fromJson;

  @override
  String? get projectDescription;
  @override
  String? get requiredTimeline;
  @override
  int? get approxNumberOfScreens;
  @override
  String? get currency;
  @override
  int? get estimatedCost;
  @override
  List<String>? get advancedFeatures;
  @override
  @JsonKey(ignore: true)
  _$$PricingDetailsImplCopyWith<_$PricingDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
