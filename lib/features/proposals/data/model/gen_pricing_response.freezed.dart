// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_pricing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenPricingResponse _$GenPricingResponseFromJson(Map<String, dynamic> json) {
  return _GenPricingResponse.fromJson(json);
}

/// @nodoc
mixin _$GenPricingResponse {
  bool? get success => throw _privateConstructorUsedError;
  GenPricingResponseData? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenPricingResponseCopyWith<GenPricingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenPricingResponseCopyWith<$Res> {
  factory $GenPricingResponseCopyWith(
          GenPricingResponse value, $Res Function(GenPricingResponse) then) =
      _$GenPricingResponseCopyWithImpl<$Res, GenPricingResponse>;
  @useResult
  $Res call({bool? success, GenPricingResponseData? data, String? error});

  $GenPricingResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GenPricingResponseCopyWithImpl<$Res, $Val extends GenPricingResponse>
    implements $GenPricingResponseCopyWith<$Res> {
  _$GenPricingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenPricingResponseData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenPricingResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GenPricingResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenPricingResponseImplCopyWith<$Res>
    implements $GenPricingResponseCopyWith<$Res> {
  factory _$$GenPricingResponseImplCopyWith(_$GenPricingResponseImpl value,
          $Res Function(_$GenPricingResponseImpl) then) =
      __$$GenPricingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, GenPricingResponseData? data, String? error});

  @override
  $GenPricingResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GenPricingResponseImplCopyWithImpl<$Res>
    extends _$GenPricingResponseCopyWithImpl<$Res, _$GenPricingResponseImpl>
    implements _$$GenPricingResponseImplCopyWith<$Res> {
  __$$GenPricingResponseImplCopyWithImpl(_$GenPricingResponseImpl _value,
      $Res Function(_$GenPricingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GenPricingResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenPricingResponseData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenPricingResponseImpl implements _GenPricingResponse {
  const _$GenPricingResponseImpl({this.success, this.data, this.error});

  factory _$GenPricingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenPricingResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final GenPricingResponseData? data;
  @override
  final String? error;

  @override
  String toString() {
    return 'GenPricingResponse(success: $success, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenPricingResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenPricingResponseImplCopyWith<_$GenPricingResponseImpl> get copyWith =>
      __$$GenPricingResponseImplCopyWithImpl<_$GenPricingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenPricingResponseImplToJson(
      this,
    );
  }
}

abstract class _GenPricingResponse implements GenPricingResponse {
  const factory _GenPricingResponse(
      {final bool? success,
      final GenPricingResponseData? data,
      final String? error}) = _$GenPricingResponseImpl;

  factory _GenPricingResponse.fromJson(Map<String, dynamic> json) =
      _$GenPricingResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  GenPricingResponseData? get data;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$GenPricingResponseImplCopyWith<_$GenPricingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenPricingResponseData _$GenPricingResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GenPricingResponseData.fromJson(json);
}

/// @nodoc
mixin _$GenPricingResponseData {
  String? get invoice => throw _privateConstructorUsedError;
  Pricing? get pricing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenPricingResponseDataCopyWith<GenPricingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenPricingResponseDataCopyWith<$Res> {
  factory $GenPricingResponseDataCopyWith(GenPricingResponseData value,
          $Res Function(GenPricingResponseData) then) =
      _$GenPricingResponseDataCopyWithImpl<$Res, GenPricingResponseData>;
  @useResult
  $Res call({String? invoice, Pricing? pricing});

  $PricingCopyWith<$Res>? get pricing;
}

/// @nodoc
class _$GenPricingResponseDataCopyWithImpl<$Res,
        $Val extends GenPricingResponseData>
    implements $GenPricingResponseDataCopyWith<$Res> {
  _$GenPricingResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = freezed,
    Object? pricing = freezed,
  }) {
    return _then(_value.copyWith(
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PricingCopyWith<$Res>? get pricing {
    if (_value.pricing == null) {
      return null;
    }

    return $PricingCopyWith<$Res>(_value.pricing!, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenPricingResponseDataImplCopyWith<$Res>
    implements $GenPricingResponseDataCopyWith<$Res> {
  factory _$$GenPricingResponseDataImplCopyWith(
          _$GenPricingResponseDataImpl value,
          $Res Function(_$GenPricingResponseDataImpl) then) =
      __$$GenPricingResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? invoice, Pricing? pricing});

  @override
  $PricingCopyWith<$Res>? get pricing;
}

/// @nodoc
class __$$GenPricingResponseDataImplCopyWithImpl<$Res>
    extends _$GenPricingResponseDataCopyWithImpl<$Res,
        _$GenPricingResponseDataImpl>
    implements _$$GenPricingResponseDataImplCopyWith<$Res> {
  __$$GenPricingResponseDataImplCopyWithImpl(
      _$GenPricingResponseDataImpl _value,
      $Res Function(_$GenPricingResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = freezed,
    Object? pricing = freezed,
  }) {
    return _then(_$GenPricingResponseDataImpl(
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: freezed == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenPricingResponseDataImpl implements _GenPricingResponseData {
  const _$GenPricingResponseDataImpl({this.invoice, this.pricing});

  factory _$GenPricingResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenPricingResponseDataImplFromJson(json);

  @override
  final String? invoice;
  @override
  final Pricing? pricing;

  @override
  String toString() {
    return 'GenPricingResponseData(invoice: $invoice, pricing: $pricing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenPricingResponseDataImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.pricing, pricing) || other.pricing == pricing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, invoice, pricing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenPricingResponseDataImplCopyWith<_$GenPricingResponseDataImpl>
      get copyWith => __$$GenPricingResponseDataImplCopyWithImpl<
          _$GenPricingResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenPricingResponseDataImplToJson(
      this,
    );
  }
}

abstract class _GenPricingResponseData implements GenPricingResponseData {
  const factory _GenPricingResponseData(
      {final String? invoice,
      final Pricing? pricing}) = _$GenPricingResponseDataImpl;

  factory _GenPricingResponseData.fromJson(Map<String, dynamic> json) =
      _$GenPricingResponseDataImpl.fromJson;

  @override
  String? get invoice;
  @override
  Pricing? get pricing;
  @override
  @JsonKey(ignore: true)
  _$$GenPricingResponseDataImplCopyWith<_$GenPricingResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Pricing _$PricingFromJson(Map<String, dynamic> json) {
  return _Pricing.fromJson(json);
}

/// @nodoc
mixin _$Pricing {
  String? get user => throw _privateConstructorUsedError;
  String? get projectDescription => throw _privateConstructorUsedError;
  String? get requiredTimeline => throw _privateConstructorUsedError;
  int? get approxNumberOfScreens => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get estimatedCost => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingCopyWith<Pricing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingCopyWith<$Res> {
  factory $PricingCopyWith(Pricing value, $Res Function(Pricing) then) =
      _$PricingCopyWithImpl<$Res, Pricing>;
  @useResult
  $Res call(
      {String? user,
      String? projectDescription,
      String? requiredTimeline,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      String? id,
      int? v});
}

/// @nodoc
class _$PricingCopyWithImpl<$Res, $Val extends Pricing>
    implements $PricingCopyWith<$Res> {
  _$PricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricingImplCopyWith<$Res> implements $PricingCopyWith<$Res> {
  factory _$$PricingImplCopyWith(
          _$PricingImpl value, $Res Function(_$PricingImpl) then) =
      __$$PricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user,
      String? projectDescription,
      String? requiredTimeline,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      String? id,
      int? v});
}

/// @nodoc
class __$$PricingImplCopyWithImpl<$Res>
    extends _$PricingCopyWithImpl<$Res, _$PricingImpl>
    implements _$$PricingImplCopyWith<$Res> {
  __$$PricingImplCopyWithImpl(
      _$PricingImpl _value, $Res Function(_$PricingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$PricingImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingImpl implements _Pricing {
  const _$PricingImpl(
      {this.user,
      this.projectDescription,
      this.requiredTimeline,
      this.approxNumberOfScreens,
      this.currency,
      this.estimatedCost,
      this.id,
      this.v});

  factory _$PricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingImplFromJson(json);

  @override
  final String? user;
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
  @override
  final String? id;
  @override
  final int? v;

  @override
  String toString() {
    return 'Pricing(user: $user, projectDescription: $projectDescription, requiredTimeline: $requiredTimeline, approxNumberOfScreens: $approxNumberOfScreens, currency: $currency, estimatedCost: $estimatedCost, id: $id, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingImpl &&
            (identical(other.user, user) || other.user == user) &&
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, projectDescription,
      requiredTimeline, approxNumberOfScreens, currency, estimatedCost, id, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingImplCopyWith<_$PricingImpl> get copyWith =>
      __$$PricingImplCopyWithImpl<_$PricingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingImplToJson(
      this,
    );
  }
}

abstract class _Pricing implements Pricing {
  const factory _Pricing(
      {final String? user,
      final String? projectDescription,
      final String? requiredTimeline,
      final int? approxNumberOfScreens,
      final String? currency,
      final int? estimatedCost,
      final String? id,
      final int? v}) = _$PricingImpl;

  factory _Pricing.fromJson(Map<String, dynamic> json) = _$PricingImpl.fromJson;

  @override
  String? get user;
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
  String? get id;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$PricingImplCopyWith<_$PricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
