import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/auth/data/datasource/auth_services.dart';
import 'package:how_much_app/features/auth/data/model/auth_model.dart';
import 'package:how_much_app/features/auth/domain/repositories/auth_r.dart';
import 'package:injectable/injectable.dart';

@Named("AuthRepository")
@Injectable(as: AuthRepository)

class AuthImpl extends AuthRepository {
  final AuthServices authServices;

  AuthImpl(@Named("authsource") this.authServices);

  @override
  Future<Either<AppError, AuthModel>> registerUser({
    email,
    fullname,
    password,
  }) async {
    try {
      final dataResp = await authServices.registerUser(
        email: email,
        fullname: fullname,
        password: password,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> loginUser({
    email,
    password,
  }) async {
    try {
      final dataResp = await authServices.loginUser(
        email: email,
        password: password,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> forgotPassword({
    email,
  }) async {
    try {
      final dataResp = await authServices.forgotPassword(
        email: email,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> verifyEmail({
    otpCode,
  }) async {
    try {
      final dataResp = await authServices.verifyEmail(
        otpCode: otpCode,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> resendCode({
    email,
  }) async {
    try {
      final dataResp = await authServices.resendCode(
        email: email,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> resetPassword({
    otpCode,
    password,
    confirmPassword,
  }) async {
    try {
      final dataResp = await authServices.resetPassword(
        otpCode: otpCode,
        password: password,
        confirmPassword: confirmPassword,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, AuthModel>> updatePassword({
    currentPassword,
    newPassword,
    confirmPassword,
  }) async {
    try {
      final dataResp = await authServices.updatePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(AuthModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

}
