import 'dart:developer';
import 'package:how_much_app/core/keys/local_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserTokenCache {

  Future<void> cacheUserToken(String token) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(
      LocalKeys.UserToken, 
      token
    );
    log("Token:$token Cached !!!!");
  }

  Future<String> getCacheUserToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final userToken = sharedPreferences.getString(LocalKeys.UserToken);
    log("Token:$userToken Fetched !!!!");
    return userToken ?? "";
  }

  Future<void> clearUserTokenCache() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(LocalKeys.UserToken);
  }

}

class UserDataCache {

  Future<void> cacheProfileData(String data) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(
      LocalKeys.UserData, 
      data
    );
    log("Profile:$data Cached !!!!");
  }

  Future<String> getCacheProfileData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final userData = sharedPreferences.getString(LocalKeys.UserData);
    log("Profile:$userData Fetched !!!!");
    return userData ?? "";
  }

  Future<void> clearUserDataCache() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(LocalKeys.UserData);
  }

}