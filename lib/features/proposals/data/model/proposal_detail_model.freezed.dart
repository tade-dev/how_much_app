// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProposalDetailModel _$ProposalDetailModelFromJson(Map<String, dynamic> json) {
  return _ProposalDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProposalDetailModel {
  bool? get success => throw _privateConstructorUsedError;
  List<ProposalData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalDetailModelCopyWith<ProposalDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailModelCopyWith<$Res> {
  factory $ProposalDetailModelCopyWith(
          ProposalDetailModel value, $Res Function(ProposalDetailModel) then) =
      _$ProposalDetailModelCopyWithImpl<$Res, ProposalDetailModel>;
  @useResult
  $Res call({bool? success, List<ProposalData>? data});
}

/// @nodoc
class _$ProposalDetailModelCopyWithImpl<$Res, $Val extends ProposalDetailModel>
    implements $ProposalDetailModelCopyWith<$Res> {
  _$ProposalDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProposalDetailModelImplCopyWith<$Res>
    implements $ProposalDetailModelCopyWith<$Res> {
  factory _$$ProposalDetailModelImplCopyWith(_$ProposalDetailModelImpl value,
          $Res Function(_$ProposalDetailModelImpl) then) =
      __$$ProposalDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, List<ProposalData>? data});
}

/// @nodoc
class __$$ProposalDetailModelImplCopyWithImpl<$Res>
    extends _$ProposalDetailModelCopyWithImpl<$Res, _$ProposalDetailModelImpl>
    implements _$$ProposalDetailModelImplCopyWith<$Res> {
  __$$ProposalDetailModelImplCopyWithImpl(_$ProposalDetailModelImpl _value,
      $Res Function(_$ProposalDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProposalDetailModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProposalDetailModelImpl implements _ProposalDetailModel {
  const _$ProposalDetailModelImpl(
      {this.success, final List<ProposalData>? data})
      : _data = data;

  factory _$ProposalDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProposalDetailModelImplFromJson(json);

  @override
  final bool? success;
  final List<ProposalData>? _data;
  @override
  List<ProposalData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProposalDetailModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalDetailModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalDetailModelImplCopyWith<_$ProposalDetailModelImpl> get copyWith =>
      __$$ProposalDetailModelImplCopyWithImpl<_$ProposalDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProposalDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ProposalDetailModel implements ProposalDetailModel {
  const factory _ProposalDetailModel(
      {final bool? success,
      final List<ProposalData>? data}) = _$ProposalDetailModelImpl;

  factory _ProposalDetailModel.fromJson(Map<String, dynamic> json) =
      _$ProposalDetailModelImpl.fromJson;

  @override
  bool? get success;
  @override
  List<ProposalData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProposalDetailModelImplCopyWith<_$ProposalDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProposalData _$ProposalDataFromJson(Map<String, dynamic> json) {
  return _ProposalData.fromJson(json);
}

/// @nodoc
mixin _$ProposalData {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get projectDescription => throw _privateConstructorUsedError;
  String? get requiredTimeline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get approxNumberOfScreens => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get estimatedCost => throw _privateConstructorUsedError;
  List<String>? get advancedFeatures => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get priceRange => throw _privateConstructorUsedError;
  String? get generatedInvoice => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalDataCopyWith<ProposalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDataCopyWith<$Res> {
  factory $ProposalDataCopyWith(
          ProposalData value, $Res Function(ProposalData) then) =
      _$ProposalDataCopyWithImpl<$Res, ProposalData>;
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? projectDescription,
      String? requiredTimeline,
      String? title,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      List<String>? advancedFeatures,
      String? user,
      String? priceRange,
      String? generatedInvoice,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$ProposalDataCopyWithImpl<$Res, $Val extends ProposalData>
    implements $ProposalDataCopyWith<$Res> {
  _$ProposalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? title = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? advancedFeatures = freezed,
    Object? user = freezed,
    Object? priceRange = freezed,
    Object? generatedInvoice = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredTimeline: freezed == requiredTimeline
          ? _value.requiredTimeline
          : requiredTimeline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedInvoice: freezed == generatedInvoice
          ? _value.generatedInvoice
          : generatedInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProposalDataImplCopyWith<$Res>
    implements $ProposalDataCopyWith<$Res> {
  factory _$$ProposalDataImplCopyWith(
          _$ProposalDataImpl value, $Res Function(_$ProposalDataImpl) then) =
      __$$ProposalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime? createdAt,
      String? projectDescription,
      String? requiredTimeline,
      String? title,
      int? approxNumberOfScreens,
      String? currency,
      int? estimatedCost,
      List<String>? advancedFeatures,
      String? user,
      String? priceRange,
      String? generatedInvoice,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$ProposalDataImplCopyWithImpl<$Res>
    extends _$ProposalDataCopyWithImpl<$Res, _$ProposalDataImpl>
    implements _$$ProposalDataImplCopyWith<$Res> {
  __$$ProposalDataImplCopyWithImpl(
      _$ProposalDataImpl _value, $Res Function(_$ProposalDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? projectDescription = freezed,
    Object? requiredTimeline = freezed,
    Object? title = freezed,
    Object? approxNumberOfScreens = freezed,
    Object? currency = freezed,
    Object? estimatedCost = freezed,
    Object? advancedFeatures = freezed,
    Object? user = freezed,
    Object? priceRange = freezed,
    Object? generatedInvoice = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ProposalDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredTimeline: freezed == requiredTimeline
          ? _value.requiredTimeline
          : requiredTimeline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedInvoice: freezed == generatedInvoice
          ? _value.generatedInvoice
          : generatedInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProposalDataImpl implements _ProposalData {
  const _$ProposalDataImpl(
      {this.id,
      this.createdAt,
      this.projectDescription,
      this.requiredTimeline,
      this.title,
      this.approxNumberOfScreens,
      this.currency,
      this.estimatedCost,
      final List<String>? advancedFeatures,
      this.user,
      this.priceRange,
      this.generatedInvoice,
      this.updatedAt,
      this.v})
      : _advancedFeatures = advancedFeatures;

  factory _$ProposalDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProposalDataImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? projectDescription;
  @override
  final String? requiredTimeline;
  @override
  final String? title;
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
  final String? user;
  @override
  final String? priceRange;
  @override
  final String? generatedInvoice;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'ProposalData(id: $id, createdAt: $createdAt, projectDescription: $projectDescription, requiredTimeline: $requiredTimeline, title: $title, approxNumberOfScreens: $approxNumberOfScreens, currency: $currency, estimatedCost: $estimatedCost, advancedFeatures: $advancedFeatures, user: $user, priceRange: $priceRange, generatedInvoice: $generatedInvoice, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.requiredTimeline, requiredTimeline) ||
                other.requiredTimeline == requiredTimeline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.approxNumberOfScreens, approxNumberOfScreens) ||
                other.approxNumberOfScreens == approxNumberOfScreens) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            const DeepCollectionEquality()
                .equals(other._advancedFeatures, _advancedFeatures) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.generatedInvoice, generatedInvoice) ||
                other.generatedInvoice == generatedInvoice) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      projectDescription,
      requiredTimeline,
      title,
      approxNumberOfScreens,
      currency,
      estimatedCost,
      const DeepCollectionEquality().hash(_advancedFeatures),
      user,
      priceRange,
      generatedInvoice,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalDataImplCopyWith<_$ProposalDataImpl> get copyWith =>
      __$$ProposalDataImplCopyWithImpl<_$ProposalDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProposalDataImplToJson(
      this,
    );
  }
}

abstract class _ProposalData implements ProposalData {
  const factory _ProposalData(
      {final String? id,
      final DateTime? createdAt,
      final String? projectDescription,
      final String? requiredTimeline,
      final String? title,
      final int? approxNumberOfScreens,
      final String? currency,
      final int? estimatedCost,
      final List<String>? advancedFeatures,
      final String? user,
      final String? priceRange,
      final String? generatedInvoice,
      final DateTime? updatedAt,
      final int? v}) = _$ProposalDataImpl;

  factory _ProposalData.fromJson(Map<String, dynamic> json) =
      _$ProposalDataImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  String? get projectDescription;
  @override
  String? get requiredTimeline;
  @override
  String? get title;
  @override
  int? get approxNumberOfScreens;
  @override
  String? get currency;
  @override
  int? get estimatedCost;
  @override
  List<String>? get advancedFeatures;
  @override
  String? get user;
  @override
  String? get priceRange;
  @override
  String? get generatedInvoice;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ProposalDataImplCopyWith<_$ProposalDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
