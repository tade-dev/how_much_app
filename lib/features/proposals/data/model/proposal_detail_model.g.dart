// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposal_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProposalDetailModelImpl _$$ProposalDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProposalDetailModelImpl(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProposalData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProposalDetailModelImplToJson(
        _$ProposalDetailModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$ProposalDataImpl _$$ProposalDataImplFromJson(Map<String, dynamic> json) =>
    _$ProposalDataImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      projectDescription: json['projectDescription'] as String?,
      requiredTimeline: json['requiredTimeline'] as String?,
      approxNumberOfScreens: (json['approxNumberOfScreens'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      estimatedCost: (json['estimatedCost'] as num?)?.toInt(),
      advancedFeatures: (json['advancedFeatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      user: json['user'] as String?,
      priceRange: json['priceRange'] as String?,
      generatedInvoice: json['generatedInvoice'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProposalDataImplToJson(_$ProposalDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'projectDescription': instance.projectDescription,
      'requiredTimeline': instance.requiredTimeline,
      'approxNumberOfScreens': instance.approxNumberOfScreens,
      'currency': instance.currency,
      'estimatedCost': instance.estimatedCost,
      'advancedFeatures': instance.advancedFeatures,
      'user': instance.user,
      'priceRange': instance.priceRange,
      'generatedInvoice': instance.generatedInvoice,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
