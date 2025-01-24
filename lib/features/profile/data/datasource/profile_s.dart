import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:how_much_app/core/api/api.dart';
import 'package:how_much_app/core/keys/endpoints.dart';
import 'package:how_much_app/features/profile/data/datasource/profile_service.dart';
import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:injectable/injectable.dart';

@Named("profilesource")
@Injectable(as: ProfileService)

class ProfileSource extends ProfileService {

  final Api api;

  var baseUrl = dotenv.env['BASE_URL'] ?? '';

  ProfileSource({required this.api});

  @override
  Future<UserProfileModel> getProfile() async {
    try {
      Response? response = await api.get(
        "$baseUrl${userProfile.getProfile}",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          // "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = UserProfileModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserProfileModel> setProfile(
    SetProfileModel req
  ) async {

    var data = {
      "yearsOfExperience": req.yearsOfExperience,
      "developerTitle": req.developerTitle,
      "developerStack": req.developerStack,
      "certifications": req.certifications,
      "portfolioLink": req.portfolioLink,
      "cvLink": req.cvLink
    };

    try {
      Response? response = await api.put(
        "$baseUrl${userProfile.setProfile}",
        data: data,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          // "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = UserProfileModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserProfileModel> uploadImage(
    {image}
  ) async {

    var data = {
      "image": await MultipartFile.fromFile(image)
    };

    FormData formData = FormData.fromMap(data);

    try {
      Response? response = await api.put(
        "$baseUrl${userProfile.uploadImage}",
        data: formData,
        options: Options(headers: {
          "Content-Type": "multipart/form-data",
          "Accept": "application/json",
          // "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = UserProfileModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserProfileModel> deleteAccount() async {

    try {
      Response? response = await api.delete(
        "$baseUrl${userProfile.deleteAccount}",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          // "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = UserProfileModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

}