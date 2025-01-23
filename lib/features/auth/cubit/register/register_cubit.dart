import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterUserUseCase registerUserUseCase;
  RegisterCubit(
    this.registerUserUseCase,
  ) : super(const RegisterState.initial());

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

}
