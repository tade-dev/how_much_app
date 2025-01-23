import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginUserUseCase loginUserUseCase;
  LoginCubit(
    this.loginUserUseCase
  ) : super(LoginState.initial());

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

}
