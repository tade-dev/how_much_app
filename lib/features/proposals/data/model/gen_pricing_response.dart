// To parse this JSON data, do
//
//     final genPricingResponse = genPricingResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'gen_pricing_response.freezed.dart';
part 'gen_pricing_response.g.dart';

GenPricingResponse genPricingResponseFromJson(String str) => GenPricingResponse.fromJson(json.decode(str));

String genPricingResponseToJson(GenPricingResponse data) => json.encode(data.toJson());

@freezed
class GenPricingResponse with _$GenPricingResponse {
    const factory GenPricingResponse({
        bool? success,
        Data? data,
    }) = _GenPricingResponse;

    factory GenPricingResponse.fromJson(Map<String, dynamic> json) => _$GenPricingResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? invoice,
        Pricing? pricing,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Pricing with _$Pricing {
    const factory Pricing({
        String? user,
        String? projectDescription,
        String? requiredTimeline,
        int? approxNumberOfScreens,
        String? currency,
        int? estimatedCost,
        String? id,
        int? v,
    }) = _Pricing;

    factory Pricing.fromJson(Map<String, dynamic> json) => _$PricingFromJson(json);
}
