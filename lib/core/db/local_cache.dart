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

}