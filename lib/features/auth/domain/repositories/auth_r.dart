import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/auth/data/model/auth_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class AuthRepository {

  Future<Either<AppError, AuthModel>> loginUser({
    email,
    password,
  });

  Future<Either<AppError, AuthModel>> registerUser({
    email,
    fullname,
    password,
  });

  Future<Either<AppError, AuthModel>> forgotPassword({
    email,
  });

  Future<Either<AppError, AuthModel>> verifyEmail({
    otpCode,
  });

  Future<Either<AppError, AuthModel>> resendCode({
    email,
  });

  Future<Either<AppError, AuthModel>> resetPassword({
    otpCode,
    password,
    confirmPassword,
  });

  Future<Either<AppError, AuthModel>> updatePassword({
    currentPassword,
    newPassword,
    confirmPassword,
  });
  
}