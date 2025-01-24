import 'package:how_much_app/features/profile/data/model/set_profile_model.dart';
import 'package:how_much_app/features/profile/data/model/user_profile_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class ProfileService {

  Future<UserProfileModel> getProfile();

  Future<UserProfileModel> setProfile(SetProfileModel req);

  Future<UserProfileModel> uploadImage({image});

  Future<UserProfileModel> deleteAccount();

}