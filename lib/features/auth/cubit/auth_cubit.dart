import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/enums/enums.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';


@lazySingleton
class AuthCubit extends Cubit<AuthState> {

  LoginUserUseCase loginUserUseCase;
  RegisterUserUseCase registerUserUseCase;
  ForgotPasswordUseCase forgotPasswordUseCase;
  ResetPasswordUseCase resetPasswordUseCase;
  VerifyEmailUseCase verifyEmailUseCase;
  UpdatePasswordUseCase updatePasswordUseCase;

  AuthCubit(
    this.forgotPasswordUseCase,
    this.loginUserUseCase,
    this.registerUserUseCase,
    this.verifyEmailUseCase,
    this.updatePasswordUseCase,
    this.resetPasswordUseCase,
  ) : super(const AuthState.initial());

  toggleShowPassword() {
    emit(state.copyWith(
      showPassword:!state.showPassword
    ));
  }
  
  updateEmail(v) {
    emit(state.copyWith(
      email: v
    ));
  }

  updatePassword(v) {
    emit(state.copyWith(
      password: v
    ));
  }

  updateConfirmPassword(v) {
    emit(state.copyWith(
      confirmPassword: v
    ));
  }

  updatePinCode(v) {
    emit(state.copyWith(
      pinCode: v
    ));
  }

  setCurrentVerifyEmail(v) {
    emit(state.copyWith(
      verifyType: v
    ));
  }

}
