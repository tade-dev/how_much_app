import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/api/exceptions.dart';
import 'package:how_much_app/core/api/success.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/enums/enums.dart';
import 'package:how_much_app/core/model/ranv_model.dart';
import 'package:how_much_app/core/routes/route_string.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/cubit/verification/verifcation_cubit.dart';
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

  resetState(){
    emit(const RegisterState.initial());
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

  updateFullname(v) {
    emit(state.copyWith(
      fullName: v
    ));
  }

  updateSelectedGender(v) {
    emit(state.copyWith(
      selectedGender: v
    ));
  }

  // REGISTER USER
  registerUser(context) async {
      emit(state.copyWith(
        signUpStatus: FormzSubmissionStatus.inProgress
      ));

      var registerReq = RequestParams(
        email: state.email,
        password: state.password,
        fullName: state.fullName,
        gender: state.selectedGender
      );

      var resp = await registerUserUseCase(registerReq);

      resp.fold((l){

        emit(state.copyWith(
          signUpStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            signUpStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            signUpStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: "Registration successful!");
          si<VerifcationCubit>().setCurrentVerifyEmail(VerifyEmailType.email);
          si<AppRouter>().pushNamed(RouteString.verifyEmail);
        }

      }
    );
  }

}
