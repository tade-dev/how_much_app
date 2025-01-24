import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class ProfileRepository {

  Future<Either<AppError, UserProfileModel>> getProfile();

  Future<Either<AppError, UserProfileModel>> uploadImage({
    image
  });

  Future<Either<AppError, UserProfileModel>> setProfile(SetProfileModel req);

  Future<Either<AppError, UserProfileModel>> deleteAccount();

}