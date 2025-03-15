// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

@freezed
class AuthModel with _$AuthModel {
    const factory AuthModel({
        bool? success,
        String? error,
        String? message,
        String? token,
        AuthData? data,
    }) = _AuthModel;

    factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}

@freezed
class AuthData with _$AuthData {
    const factory AuthData({
        AuthUser? user,
    }) = _AuthData;

    factory AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);
}

@freezed
class AuthUser with _$AuthUser {
    const factory AuthUser({
        Otp? otp,
        String? id,
        String? firstname,
        String? lastname,
        String? gender,
        String? email,
        String? password,
        String? image,
        bool? isActive,
        String? developerTitle,
        DateTime? createdAt,
        int? v,
    }) = _AuthUser;

    factory AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);
}

@freezed
class Otp with _$Otp {
    const factory Otp({
        dynamic code,
        DateTime? expiresAt,
    }) = _Otp;

    factory Otp.fromJson(Map<String, dynamic> json) => _$OtpFromJson(json);
}
