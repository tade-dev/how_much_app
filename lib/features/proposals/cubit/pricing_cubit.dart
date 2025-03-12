import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pricing_state.dart';
part 'pricing_cubit.freezed.dart';

@injectable
class PricingCubit extends Cubit<PricingState> {
  PricingCubit() : super(const PricingState());
}
