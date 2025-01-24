import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/core/entites/no_params.dart';
import 'package:how_much_app/core/model/ranv_model.dart';
import 'package:how_much_app/core/usecases/usecases.dart';
import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:how_much_app/features/profile/domain/repositories/profile_r.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfileUsecase extends UseCase<UserProfileModel, NoParams> {
  final ProfileRepository profileRepository;

  GetProfileUsecase(@Named("ProfileRepository") this.profileRepository);

  @override
  Future<Either<AppError, UserProfileModel>> call(params) async {
    return await profileRepository.getProfile();
  }
}

@injectable
class DeleteAccountUsecase extends UseCase<UserProfileModel, NoParams> {
  final ProfileRepository profileRepository;

  DeleteAccountUsecase(@Named("ProfileRepository") this.profileRepository);

  @override
  Future<Either<AppError, UserProfileModel>> call(params) async {
    return await profileRepository.deleteAccount();
  }
}

@injectable
class SetProfileUsecase extends UseCase<UserProfileModel, SetProfileModel> {
  final ProfileRepository profileRepository;

  SetProfileUsecase(@Named("ProfileRepository") this.profileRepository);

  @override
  Future<Either<AppError, UserProfileModel>> call(SetProfileModel params) async {
    return await profileRepository.setProfile(params);
  }
}

@injectable
class UploadImageUsecase extends UseCase<UserProfileModel, RequestParams> {
  final ProfileRepository profileRepository;

  UploadImageUsecase(@Named("ProfileRepository") this.profileRepository);

  @override
  Future<Either<AppError, UserProfileModel>> call(RequestParams params) async {
    return await profileRepository.uploadImage(
      image: params.image
    );
  }
}