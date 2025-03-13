// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PricingState {
  DateTimeRange? get selectedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TextEditingController? get timeline => throw _privateConstructorUsedError;
  String get selectedCurrency => throw _privateConstructorUsedError;
  String get projectCost => throw _privateConstructorUsedError;
  bool get hasAdvancedFeatures => throw _privateConstructorUsedError;
  List<String> get advancedFeaturesList => throw _privateConstructorUsedError;
  List<ProposalData> get proposalList => throw _privateConstructorUsedError;
  String get exceptionError => throw _privateConstructorUsedError;
  TextEditingController? get featureText => throw _privateConstructorUsedError;
  GenPricingResponse? get genPricingResponse =>
      throw _privateConstructorUsedError;
  GenPricingResponseData? get genPricingResponseData =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get generationStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get getPricingStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PricingStateCopyWith<PricingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingStateCopyWith<$Res> {
  factory $PricingStateCopyWith(
          PricingState value, $Res Function(PricingState) then) =
      _$PricingStateCopyWithImpl<$Res, PricingState>;
  @useResult
  $Res call(
      {DateTimeRange? selectedDate,
      String description,
      TextEditingController? timeline,
      String selectedCurrency,
      String projectCost,
      bool hasAdvancedFeatures,
      List<String> advancedFeaturesList,
      List<ProposalData> proposalList,
      String exceptionError,
      TextEditingController? featureText,
      GenPricingResponse? genPricingResponse,
      GenPricingResponseData? genPricingResponseData,
      FormzSubmissionStatus generationStatus,
      FormzSubmissionStatus getPricingStatus});

  $GenPricingResponseCopyWith<$Res>? get genPricingResponse;
  $GenPricingResponseDataCopyWith<$Res>? get genPricingResponseData;
}

/// @nodoc
class _$PricingStateCopyWithImpl<$Res, $Val extends PricingState>
    implements $PricingStateCopyWith<$Res> {
  _$PricingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? description = null,
    Object? timeline = freezed,
    Object? selectedCurrency = null,
    Object? projectCost = null,
    Object? hasAdvancedFeatures = null,
    Object? advancedFeaturesList = null,
    Object? proposalList = null,
    Object? exceptionError = null,
    Object? featureText = freezed,
    Object? genPricingResponse = freezed,
    Object? genPricingResponseData = freezed,
    Object? generationStatus = null,
    Object? getPricingStatus = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: freezed == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      selectedCurrency: null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      projectCost: null == projectCost
          ? _value.projectCost
          : projectCost // ignore: cast_nullable_to_non_nullable
              as String,
      hasAdvancedFeatures: null == hasAdvancedFeatures
          ? _value.hasAdvancedFeatures
          : hasAdvancedFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
      advancedFeaturesList: null == advancedFeaturesList
          ? _value.advancedFeaturesList
          : advancedFeaturesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      proposalList: null == proposalList
          ? _value.proposalList
          : proposalList // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
      featureText: freezed == featureText
          ? _value.featureText
          : featureText // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      genPricingResponse: freezed == genPricingResponse
          ? _value.genPricingResponse
          : genPricingResponse // ignore: cast_nullable_to_non_nullable
              as GenPricingResponse?,
      genPricingResponseData: freezed == genPricingResponseData
          ? _value.genPricingResponseData
          : genPricingResponseData // ignore: cast_nullable_to_non_nullable
              as GenPricingResponseData?,
      generationStatus: null == generationStatus
          ? _value.generationStatus
          : generationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      getPricingStatus: null == getPricingStatus
          ? _value.getPricingStatus
          : getPricingStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenPricingResponseCopyWith<$Res>? get genPricingResponse {
    if (_value.genPricingResponse == null) {
      return null;
    }

    return $GenPricingResponseCopyWith<$Res>(_value.genPricingResponse!,
        (value) {
      return _then(_value.copyWith(genPricingResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenPricingResponseDataCopyWith<$Res>? get genPricingResponseData {
    if (_value.genPricingResponseData == null) {
      return null;
    }

    return $GenPricingResponseDataCopyWith<$Res>(_value.genPricingResponseData!,
        (value) {
      return _then(_value.copyWith(genPricingResponseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PricingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTimeRange? selectedDate,
      String description,
      TextEditingController? timeline,
      String selectedCurrency,
      String projectCost,
      bool hasAdvancedFeatures,
      List<String> advancedFeaturesList,
      List<ProposalData> proposalList,
      String exceptionError,
      TextEditingController? featureText,
      GenPricingResponse? genPricingResponse,
      GenPricingResponseData? genPricingResponseData,
      FormzSubmissionStatus generationStatus,
      FormzSubmissionStatus getPricingStatus});

  @override
  $GenPricingResponseCopyWith<$Res>? get genPricingResponse;
  @override
  $GenPricingResponseDataCopyWith<$Res>? get genPricingResponseData;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PricingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? description = null,
    Object? timeline = freezed,
    Object? selectedCurrency = null,
    Object? projectCost = null,
    Object? hasAdvancedFeatures = null,
    Object? advancedFeaturesList = null,
    Object? proposalList = null,
    Object? exceptionError = null,
    Object? featureText = freezed,
    Object? genPricingResponse = freezed,
    Object? genPricingResponseData = freezed,
    Object? generationStatus = null,
    Object? getPricingStatus = null,
  }) {
    return _then(_$InitialImpl(
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: freezed == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      selectedCurrency: null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      projectCost: null == projectCost
          ? _value.projectCost
          : projectCost // ignore: cast_nullable_to_non_nullable
              as String,
      hasAdvancedFeatures: null == hasAdvancedFeatures
          ? _value.hasAdvancedFeatures
          : hasAdvancedFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
      advancedFeaturesList: null == advancedFeaturesList
          ? _value._advancedFeaturesList
          : advancedFeaturesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      proposalList: null == proposalList
          ? _value._proposalList
          : proposalList // ignore: cast_nullable_to_non_nullable
              as List<ProposalData>,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
      featureText: freezed == featureText
          ? _value.featureText
          : featureText // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      genPricingResponse: freezed == genPricingResponse
          ? _value.genPricingResponse
          : genPricingResponse // ignore: cast_nullable_to_non_nullable
              as GenPricingResponse?,
      genPricingResponseData: freezed == genPricingResponseData
          ? _value.genPricingResponseData
          : genPricingResponseData // ignore: cast_nullable_to_non_nullable
              as GenPricingResponseData?,
      generationStatus: null == generationStatus
          ? _value.generationStatus
          : generationStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      getPricingStatus: null == getPricingStatus
          ? _value.getPricingStatus
          : getPricingStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.selectedDate,
      this.description = "",
      this.timeline,
      this.selectedCurrency = "",
      this.projectCost = "",
      this.hasAdvancedFeatures = false,
      final List<String> advancedFeaturesList = const [],
      final List<ProposalData> proposalList = const [],
      this.exceptionError = "",
      this.featureText,
      this.genPricingResponse,
      this.genPricingResponseData,
      this.generationStatus = FormzSubmissionStatus.initial,
      this.getPricingStatus = FormzSubmissionStatus.initial})
      : _advancedFeaturesList = advancedFeaturesList,
        _proposalList = proposalList,
        super._();

  @override
  final DateTimeRange? selectedDate;
  @override
  @JsonKey()
  final String description;
  @override
  final TextEditingController? timeline;
  @override
  @JsonKey()
  final String selectedCurrency;
  @override
  @JsonKey()
  final String projectCost;
  @override
  @JsonKey()
  final bool hasAdvancedFeatures;
  final List<String> _advancedFeaturesList;
  @override
  @JsonKey()
  List<String> get advancedFeaturesList {
    if (_advancedFeaturesList is EqualUnmodifiableListView)
      return _advancedFeaturesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advancedFeaturesList);
  }

  final List<ProposalData> _proposalList;
  @override
  @JsonKey()
  List<ProposalData> get proposalList {
    if (_proposalList is EqualUnmodifiableListView) return _proposalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proposalList);
  }

  @override
  @JsonKey()
  final String exceptionError;
  @override
  final TextEditingController? featureText;
  @override
  final GenPricingResponse? genPricingResponse;
  @override
  final GenPricingResponseData? genPricingResponseData;
  @override
  @JsonKey()
  final FormzSubmissionStatus generationStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus getPricingStatus;

  @override
  String toString() {
    return 'PricingState(selectedDate: $selectedDate, description: $description, timeline: $timeline, selectedCurrency: $selectedCurrency, projectCost: $projectCost, hasAdvancedFeatures: $hasAdvancedFeatures, advancedFeaturesList: $advancedFeaturesList, proposalList: $proposalList, exceptionError: $exceptionError, featureText: $featureText, genPricingResponse: $genPricingResponse, genPricingResponseData: $genPricingResponseData, generationStatus: $generationStatus, getPricingStatus: $getPricingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.projectCost, projectCost) ||
                other.projectCost == projectCost) &&
            (identical(other.hasAdvancedFeatures, hasAdvancedFeatures) ||
                other.hasAdvancedFeatures == hasAdvancedFeatures) &&
            const DeepCollectionEquality()
                .equals(other._advancedFeaturesList, _advancedFeaturesList) &&
            const DeepCollectionEquality()
                .equals(other._proposalList, _proposalList) &&
            (identical(other.exceptionError, exceptionError) ||
                other.exceptionError == exceptionError) &&
            (identical(other.featureText, featureText) ||
                other.featureText == featureText) &&
            (identical(other.genPricingResponse, genPricingResponse) ||
                other.genPricingResponse == genPricingResponse) &&
            (identical(other.genPricingResponseData, genPricingResponseData) ||
                other.genPricingResponseData == genPricingResponseData) &&
            (identical(other.generationStatus, generationStatus) ||
                other.generationStatus == generationStatus) &&
            (identical(other.getPricingStatus, getPricingStatus) ||
                other.getPricingStatus == getPricingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      description,
      timeline,
      selectedCurrency,
      projectCost,
      hasAdvancedFeatures,
      const DeepCollectionEquality().hash(_advancedFeaturesList),
      const DeepCollectionEquality().hash(_proposalList),
      exceptionError,
      featureText,
      genPricingResponse,
      genPricingResponseData,
      generationStatus,
      getPricingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial extends PricingState {
  const factory _Initial(
      {final DateTimeRange? selectedDate,
      final String description,
      final TextEditingController? timeline,
      final String selectedCurrency,
      final String projectCost,
      final bool hasAdvancedFeatures,
      final List<String> advancedFeaturesList,
      final List<ProposalData> proposalList,
      final String exceptionError,
      final TextEditingController? featureText,
      final GenPricingResponse? genPricingResponse,
      final GenPricingResponseData? genPricingResponseData,
      final FormzSubmissionStatus generationStatus,
      final FormzSubmissionStatus getPricingStatus}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  DateTimeRange? get selectedDate;
  @override
  String get description;
  @override
  TextEditingController? get timeline;
  @override
  String get selectedCurrency;
  @override
  String get projectCost;
  @override
  bool get hasAdvancedFeatures;
  @override
  List<String> get advancedFeaturesList;
  @override
  List<ProposalData> get proposalList;
  @override
  String get exceptionError;
  @override
  TextEditingController? get featureText;
  @override
  GenPricingResponse? get genPricingResponse;
  @override
  GenPricingResponseData? get genPricingResponseData;
  @override
  FormzSubmissionStatus get generationStatus;
  @override
  FormzSubmissionStatus get getPricingStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
