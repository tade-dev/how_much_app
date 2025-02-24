import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_state.dart';
part 'pricing_cubit.freezed.dart';

class PricingCubit extends Cubit<PricingState> {
  PricingCubit() : super(const PricingState());
}
