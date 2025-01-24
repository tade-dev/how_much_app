// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

UserProfileModel userProfileModelFromJson(String str) => UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) => json.encode(data.toJson());

@freezed
class UserProfileModel with _$UserProfileModel {
    const factory UserProfileModel({
        bool? success,
        String? error,
        String? message,
        UserData? data,
    }) = _UserProfileModel;

    factory UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);
}

@freezed
class UserData with _$UserData {
    const factory UserData({
        Otp? otp,
        String? id,
        String? firstname,
        String? lastname,
        String? gender,
        String? email,
        String? image,
        bool? isActive,
        DateTime? createdAt,
        int? v,
        List<String>? certifications,
        String? cvLink,
        List<String>? developerStack,
        String? developerTitle,
        String? portfolioLink,
        int? yearsOfExperience,
    }) = _UserData;

    factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}

@freezed
class Otp with _$Otp {
    const factory Otp({
        dynamic code,
        DateTime? expiresAt,
    }) = _Otp;

    factory Otp.fromJson(Map<String, dynamic> json) => _$OtpFromJson(json);
}
