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

  resetState(){
    emit(const ForgotPasswordState.initial());
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

  // FORGOT PASSWORD
  initiateForgotPassword(context) async {
      emit(state.copyWith(
        forgotPasswordStatus: FormzSubmissionStatus.inProgress
      ));

      var forgotPasswordReq = RequestParams(
        email: state.email,
      );

      var resp = await forgotPasswordUseCase(forgotPasswordReq);

      resp.fold((l){

        emit(state.copyWith(
          forgotPasswordStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            forgotPasswordStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            forgotPasswordStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Email sent successful!");
          si<VerifcationCubit>().setCurrentVerifyEmail(VerifyEmailType.password);
          si<AppRouter>().pushNamed(RouteString.verifyEmail);
        }

      }
    );
  }

  // RESET PASSWORD
  initiateResetPassword(context) async {
      emit(state.copyWith(
        resetPasswordStatus: FormzSubmissionStatus.inProgress
      ));

      var resetPasswordReq = RequestParams(
        otpCode: si<VerifcationCubit>().state.pinCode,
        password: state.password,
        confirmPassword: state.password,
      );

      var resp = await resetPasswordUseCase(resetPasswordReq);

      resp.fold((l){

        emit(state.copyWith(
          resetPasswordStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            resetPasswordStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            resetPasswordStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Password reset successfully!");
          si<VerifcationCubit>().setCurrentVerifyEmail(VerifyEmailType.password);
          si<AppRouter>().replaceNamed(RouteString.signin);
        }

      }
    );
  }


}
