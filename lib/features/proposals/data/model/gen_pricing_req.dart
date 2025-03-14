// To parse this JSON data, do
//
//     final genPricingReq = genPricingReqFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'gen_pricing_req.freezed.dart';
part 'gen_pricing_req.g.dart';

GenPricingReq genPricingReqFromJson(String str) => GenPricingReq.fromJson(json.decode(str));

String genPricingReqToJson(GenPricingReq data) => json.encode(data.toJson());

@freezed
class GenPricingReq with _$GenPricingReq {
    const factory GenPricingReq({
        PricingDetails? pricingDetails,
    }) = _GenPricingReq;

    factory GenPricingReq.fromJson(Map<String, dynamic> json) => _$GenPricingReqFromJson(json);
}

@freezed
class PricingDetails with _$PricingDetails {
    const factory PricingDetails({
        String? projectDescription,
        String? title,
        String? requiredTimeline,
        int? approxNumberOfScreens,
        String? currency,
        int? estimatedCost,
        List<String>? advancedFeatures,
    }) = _PricingDetails;

    factory PricingDetails.fromJson(Map<String, dynamic> json) => _$PricingDetailsFromJson(json);
}
