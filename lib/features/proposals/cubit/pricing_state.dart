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
    TextEditingController? featureText,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus generationStatus
  }) = _Initial;

  List<String> get currencies => [
    "USD",
    "NGN",
    "GHC",
    "EUR",
    "GBP",
  ];

}
