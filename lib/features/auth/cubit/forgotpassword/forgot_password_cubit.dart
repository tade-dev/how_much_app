import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordUseCase forgotPasswordUseCase;
  ResetPasswordUseCase resetPasswordUseCase;
  UpdatePasswordUseCase updatePasswordUseCase;

  ForgotPasswordCubit(
    this.forgotPasswordUseCase,
    this.resetPasswordUseCase,
    this.updatePasswordUseCase,
  ) : super(const ForgotPasswordState.initial());

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
  
  updateConfirmPassword(v) {
    emit(state.copyWith(
      confirmPassword: v
    ));
  }
  
  updatePassword(v) {
    emit(state.copyWith(
      password: v
    ));
  }


}
