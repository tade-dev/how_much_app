import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/enums/enums.dart';
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
