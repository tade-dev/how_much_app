// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_pricing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenPricingResponseImpl _$$GenPricingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GenPricingResponseImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : GenPricingResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$GenPricingResponseImplToJson(
        _$GenPricingResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

_$GenPricingResponseDataImpl _$$GenPricingResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GenPricingResponseDataImpl(
      invoice: json['invoice'] as String?,
      pricing: json['pricing'] == null
          ? null
          : Pricing.fromJson(json['pricing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenPricingResponseDataImplToJson(
        _$GenPricingResponseDataImpl instance) =>
    <String, dynamic>{
      'invoice': instance.invoice,
      'pricing': instance.pricing,
    };

_$PricingImpl _$$PricingImplFromJson(Map<String, dynamic> json) =>
    _$PricingImpl(
      user: json['user'] as String?,
      projectDescription: json['projectDescription'] as String?,
      requiredTimeline: json['requiredTimeline'] as String?,
      approxNumberOfScreens: (json['approxNumberOfScreens'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      estimatedCost: (json['estimatedCost'] as num?)?.toInt(),
      id: json['id'] as String?,
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PricingImplToJson(_$PricingImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'projectDescription': instance.projectDescription,
      'requiredTimeline': instance.requiredTimeline,
      'approxNumberOfScreens': instance.approxNumberOfScreens,
      'currency': instance.currency,
      'estimatedCost': instance.estimatedCost,
      'id': instance.id,
      'v': instance.v,
    };
