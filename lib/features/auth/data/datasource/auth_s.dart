import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:how_much_app/core/api/api.dart';
import 'package:how_much_app/core/db/local_cache.dart';
import 'package:how_much_app/core/keys/endpoints.dart';
import 'package:how_much_app/features/auth/data/datasource/auth_services.dart';
import 'package:how_much_app/features/auth/data/model/auth_model.dart';
import 'package:injectable/injectable.dart';

@Named("authsource")
@Injectable(as: AuthServices)

class AuthSource extends AuthServices {

  final Api api;

  var baseUrl = dotenv.env['BASE_URL'].toString();

  AuthSource({required this.api});

  @override
  Future<AuthModel> loginUser({email, password}) async {
    var data = {
      "email": email,
      "password": password,
    };
    try {
      Response? response = await api.post(
        "$baseUrl${auth.login}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> registerUser({
    email,
    fullname,
    gender,
    password,
  }) async {
    var data = {
      "firstname": fullname.toString().split(" ").first,
      "lastname": fullname.toString().split(" ").last,
      "email": email,
      "gender": gender,
      "password": password,
    };
    log(data.toString());
    try {
      Response? response = await api.post(
        "$baseUrl${auth.signup}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> forgotPassword({
    email,
  }) async {
    var data = {
      "email": email,
    };
    try {
      Response? response = await api.post(
        "$baseUrl${auth.forgotPassword}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> verifyEmail({
    otpCode,
  }) async {
    var data = {
      "otpCode": otpCode,
    };
    try {
      Response? response = await api.post(
        "$baseUrl${auth.verifyOtp}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> resendCode({
    email,
  }) async {
    var data = {
      "email": email,
    };
    try {
      Response? response = await api.post(
        "$baseUrl${auth.resendVerificationCode}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> resetPassword({
    otpCode,
    password,
    confirmPassword,
  }) async {
    var data = {
      "otpCode": otpCode,
      "password": password,
      "confirmPassword": confirmPassword,
    };
    try {
      Response? response = await api.post(
        "$baseUrl${auth.resetPassword}",
        data: data
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthModel> updatePassword({
    currentPassword,
    newPassword,
    confirmPassword,
  }) async {
    var data = {
      "currentPassword": currentPassword,
      "newPassword": newPassword,
      "confirmPassword": confirmPassword,
    };
    try {
      String token = await UserTokenCache().getCacheUserToken();
      Response? response = await api.post(
        "$baseUrl${auth.updatePassword}",
        data: data,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = AuthModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }
  
}