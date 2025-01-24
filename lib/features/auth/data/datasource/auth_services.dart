import 'package:how_much_app/features/auth/data/model/auth_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class AuthServices {

  Future<AuthModel> loginUser({
    email,
    password,
  });

  Future<AuthModel> registerUser({
    email,
    fullname,
    gender,
    password,
  });

  Future<AuthModel> forgotPassword({
    email,
  });

  Future<AuthModel> verifyEmail({
    otpCode,
  });

  Future<AuthModel> resendCode({
    email,
  });

  Future<AuthModel> resetPassword({
    otpCode,
    password,
    confirmPassword,
  });

  Future<AuthModel> updatePassword({
    currentPassword,
    newPassword,
    confirmPassword,
  });
  
}