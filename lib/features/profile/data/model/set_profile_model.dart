// To parse this JSON data, do
//
//     final setProfileModel = setProfileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'set_profile_model.freezed.dart';
part 'set_profile_model.g.dart';

SetProfileModel setProfileModelFromJson(String str) => SetProfileModel.fromJson(json.decode(str));

String setProfileModelToJson(SetProfileModel data) => json.encode(data.toJson());

@freezed
class SetProfileModel with _$SetProfileModel {
    const factory SetProfileModel({
        int? yearsOfExperience,
        String? developerTitle,
        List<String>? developerStack,
        List<String>? certifications,
        String? portfolioLink,
        String? cvLink,
    }) = _SetProfileModel;

    factory SetProfileModel.fromJson(Map<String, dynamic> json) => _$SetProfileModelFromJson(json);
}
