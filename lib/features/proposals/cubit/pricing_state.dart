part of 'pricing_cubit.dart';

@freezed
class PricingState with _$PricingState {
  const PricingState._();
  const factory PricingState({
    DateTimeRange? selectedDate,
    TextEditingController? description,
    TextEditingController? timeline,
    TextEditingController? selectedCurrency,
    TextEditingController? projectCost,
    @Default(false) bool hasAdvancedFeatures,
    @Default([]) List<String> advancedFeaturesList,
    @Default([]) List<ProposalData> proposalList,
    TextEditingController? featureText,
    GenPricingResponse? genPricingResponse,
    GenPricingResponseData? genPricingResponseData,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus generationStatus,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus getPricingStatus,
  }) = _Initial;

  List<String> get currencies => [
    "USD",
    "NGN",
    "GHC",
    "EUR",
    "GBP",
  ];

}
