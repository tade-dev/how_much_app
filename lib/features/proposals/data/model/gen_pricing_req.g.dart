// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_pricing_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenPricingReqImpl _$$GenPricingReqImplFromJson(Map<String, dynamic> json) =>
    _$GenPricingReqImpl(
      pricingDetails: json['pricingDetails'] == null
          ? null
          : PricingDetails.fromJson(
              json['pricingDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenPricingReqImplToJson(_$GenPricingReqImpl instance) =>
    <String, dynamic>{
      'pricingDetails': instance.pricingDetails,
    };

_$PricingDetailsImpl _$$PricingDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PricingDetailsImpl(
      projectDescription: json['projectDescription'] as String?,
      title: json['title'] as String?,
      requiredTimeline: json['requiredTimeline'] as String?,
      approxNumberOfScreens: (json['approxNumberOfScreens'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      estimatedCost: (json['estimatedCost'] as num?)?.toInt(),
      advancedFeatures: (json['advancedFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PricingDetailsImplToJson(
        _$PricingDetailsImpl instance) =>
    <String, dynamic>{
      'projectDescription': instance.projectDescription,
      'title': instance.title,
      'requiredTimeline': instance.requiredTimeline,
      'approxNumberOfScreens': instance.approxNumberOfScreens,
      'currency': instance.currency,
      'estimatedCost': instance.estimatedCost,
      'advancedFeatures': instance.advancedFeatures,
    };
