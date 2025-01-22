import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/enums/enums.dart';
import 'package:injectable/injectable.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';


@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

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

  setCurrentVerifyEmail(v) {
    emit(state.copyWith(
      verifyType: v
    ));
  }

}
