import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/profile/data/datasource/profile_service.dart';
import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:how_much_app/features/profile/domain/repositories/profile_r.dart';
import 'package:injectable/injectable.dart';

@Named("ProfileRepository")
@Injectable(as: ProfileRepository)

class ProfileImpl extends ProfileRepository {

  final ProfileService profileService;

  ProfileImpl(@Named("profilesource") this.profileService);

  @override
  Future<Either<AppError, UserProfileModel>> getProfile() async {
    try {
      final dataResp = await profileService.getProfile();
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(UserProfileModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, UserProfileModel>> deleteAccount() async {
    try {
      final dataResp = await profileService.deleteAccount();
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(UserProfileModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, UserProfileModel>> uploadImage({image}) async {
    try {
      final dataResp = await profileService.uploadImage(
        image: image
      );
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(UserProfileModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, UserProfileModel>> setProfile(SetProfileModel req) async {
    try {
      final dataResp = await profileService.setProfile(req);
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(UserProfileModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

}
