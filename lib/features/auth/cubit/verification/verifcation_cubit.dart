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
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart';
import 'package:injectable/injectable.dart';

part 'verifcation_state.dart';
part 'verifcation_cubit.freezed.dart';

@injectable
class VerifcationCubit extends Cubit<VerifcationState> {
  VerifyEmailUseCase verifyEmailUseCase;

  VerifcationCubit(
    this.verifyEmailUseCase,
  ) : super(const VerifcationState.initial());

  resetState(){
    emit(const VerifcationState.initial());
  }

  updatePinCode(v) {
    emit(state.copyWith(
      pinCode: v
    ));
  }

  setCurrentVerifyEmail(VerifyEmailType v) {
    emit(state.copyWith(
      verifyType: v
    ));
  }

  // VERIFY USER EMAIL
  verifyEmail(context) async {
      emit(state.copyWith(
        verifyStatus: FormzSubmissionStatus.inProgress
      ));

      var verifyReq = RequestParams(
        otpCode: state.pinCode,
      );

      var resp = await verifyEmailUseCase(verifyReq);

      resp.fold((l){

        emit(state.copyWith(
          verifyStatus: FormzSubmissionStatus.failure,
        ));

        handleException(l.message, context);

      }, (r){

        if (r.success == false) {
          emit(state.copyWith(
            verifyStatus: FormzSubmissionStatus.failure,
          ));
          handleException((r.error ?? r.message).toString(), context);
        }else {
          emit(state.copyWith(
            verifyStatus: FormzSubmissionStatus.success,
          ));
          handleSuccess(context: context, message: r.message ?? "Email verified successfully!");
          if(state.verifyType == VerifyEmailType.email) {
            si<AppRouter>().replaceNamed(RouteString.signin);
          }else {
            si<AppRouter>().pushNamed(RouteString.resetPassword);
          }
        }

      }
    );
  }


}
