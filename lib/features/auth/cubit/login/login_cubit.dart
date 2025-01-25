import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/api/exceptions.dart';
import 'package:how_much_app/core/api/success.dart';
import 'package:how_much_app/core/db/local_cache.dart';
import 'package:how_much_app/core/model/ranv_model.dart';
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginUserUseCase loginUserUseCase;
  LoginCubit(
    this.loginUserUseCase
  ) : super(const LoginState.initial());

  resetState(){
    emit(const LoginState.initial());
  }

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

  // LOGIN USER
  loginUser(context) async {
      emit(state.copyWith(
        loginStatus: FormzSubmissionStatus.inProgress
      ));

      var loginReq = RequestParams(
        email: state.email,
        password: state.password
      );

      var resp = await loginUserUseCase(loginReq);

      resp.fold((l){

        emit(state.copyWith(
          loginStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            loginStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            loginStatus: FormzSubmissionStatus.success,
          ));
          UserTokenCache().cacheUserToken(r.token ?? "");
          handleSuccess(context: context, message: r.message ?? "Login successful!");
        }

      }
    );
  }

}
