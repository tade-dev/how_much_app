import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/core/model/ranv_model.dart';
import 'package:how_much_app/core/usecases/usecases.dart';
import 'package:how_much_app/features/auth/data/model/auth_model.dart';
import 'package:how_much_app/features/auth/domain/repositories/auth_r.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUserUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  LoginUserUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.loginUser(
      email: params.email,
      password: params.password
    );
  }
}

@injectable
class RegisterUserUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  RegisterUserUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.registerUser(
      email: params.email,
      password: params.password,
      gender: params.gender,
      fullname: params.fullName
    );
  }
}

@injectable
class VerifyEmailUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  VerifyEmailUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.verifyEmail(
      otpCode: params.email,
    );
  }
}

@injectable
class ForgotPasswordUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  ForgotPasswordUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.forgotPassword(
      email: params.email,
    );
  }
}

@injectable
class ResendCodeUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  ResendCodeUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.resendCode(
      email: params.email,
    );
  }
}

@injectable
class ResetPasswordUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  ResetPasswordUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.resetPassword(
      password: params.password,
      confirmPassword: params.confirmPassword,
      otpCode: params.otpCode,
    );
  }
}

@injectable
class UpdatePasswordUseCase extends UseCase<AuthModel, RequestParams> {
  final AuthRepository authRepository;

  UpdatePasswordUseCase(@Named("AuthRepository") this.authRepository);

  @override
  Future<Either<AppError, AuthModel>> call(RequestParams params) async {
    return await authRepository.updatePassword(
      confirmPassword: params.confirmPassword,
      currentPassword: params.currentPassword,
      newPassword: params.newPassword,
    );
  }
}
