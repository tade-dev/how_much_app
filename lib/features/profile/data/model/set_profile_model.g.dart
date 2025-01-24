// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetProfileModelImpl _$$SetProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetProfileModelImpl(
      yearsOfExperience: (json['yearsOfExperience'] as num?)?.toInt(),
      developerTitle: json['developerTitle'] as String?,
      developerStack: (json['developerStack'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      certifications: (json['certifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      portfolioLink: json['portfolioLink'] as String?,
      cvLink: json['cvLink'] as String?,
    );

Map<String, dynamic> _$$SetProfileModelImplToJson(
        _$SetProfileModelImpl instance) =>
    <String, dynamic>{
      'yearsOfExperience': instance.yearsOfExperience,
      'developerTitle': instance.developerTitle,
      'developerStack': instance.developerStack,
      'certifications': instance.certifications,
      'portfolioLink': instance.portfolioLink,
      'cvLink': instance.cvLink,
    };
