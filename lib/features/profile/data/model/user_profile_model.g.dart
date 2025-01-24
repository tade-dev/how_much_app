// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      success: json['success'] as bool?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      otp: json['otp'] == null
          ? null
          : Otp.fromJson(json['otp'] as Map<String, dynamic>),
      id: json['id'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: (json['v'] as num?)?.toInt(),
      certifications: (json['certifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cvLink: json['cvLink'] as String?,
      developerStack: (json['developerStack'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      developerTitle: json['developerTitle'] as String?,
      portfolioLink: json['portfolioLink'] as String?,
      yearsOfExperience: (json['yearsOfExperience'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'gender': instance.gender,
      'email': instance.email,
      'image': instance.image,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'v': instance.v,
      'certifications': instance.certifications,
      'cvLink': instance.cvLink,
      'developerStack': instance.developerStack,
      'developerTitle': instance.developerTitle,
      'portfolioLink': instance.portfolioLink,
      'yearsOfExperience': instance.yearsOfExperience,
    };

_$OtpImpl _$$OtpImplFromJson(Map<String, dynamic> json) => _$OtpImpl(
      code: json['code'],
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$OtpImplToJson(_$OtpImpl instance) => <String, dynamic>{
      'code': instance.code,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
