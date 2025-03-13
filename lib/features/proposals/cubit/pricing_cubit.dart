import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:injectable/injectable.dart';

part 'pricing_state.dart';
part 'pricing_cubit.freezed.dart';

@injectable
class PricingCubit extends Cubit<PricingState> {
  PricingCubit() : super(const PricingState());

  resetState() {
    emit(const PricingState());
  }

  toggleHasAdvancedFetaures() {
    emit(state.copyWith(
      hasAdvancedFeatures: !state.hasAdvancedFeatures,
      advancedFeaturesList: [],
      featureText: TextEditingController(text: "")
    ));
  }

  addToAdvancedFeatures() {
    if(state.featureText != null && state.featureText!.text.isEmpty) {
      null;
    }else {
      emit(state.copyWith(
        advancedFeaturesList: List.from(state.advancedFeaturesList)..add(state.featureText?.text ?? ''),
      ));
      Future.delayed(
        const Duration(milliseconds: 500),
        (){
          emit(state.copyWith(featureText: TextEditingController(text: "")));
        }
      );
    }
  }

  removeFromAdvancedFeatures(v) {
    emit(state.copyWith(
      advancedFeaturesList: List.from(state.advancedFeaturesList)..remove(v),
    ));
  }

  triggerDatePicker() async{
    var context = si<AppRouter>().navigatorKey.currentContext;
    final DateTimeRange? pickedRange = await showDateRangePicker(
      context: context!,
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      initialDateRange: state.selectedDate ??
          DateTimeRange(
            start: DateTime.now(),
            end: DateTime.now().add(const Duration(days: 7)),
          ),
    );

    if (pickedRange != null && pickedRange != state.selectedDate) {

      emit(state.copyWith(
        selectedDate: pickedRange,
      ));

      final int numberOfDays = pickedRange.end.difference(pickedRange.start).inDays + 1;
      final double numberOfWeeks = (numberOfDays / 7).ceilToDouble();

      emit(state.copyWith(
        timeline: TextEditingController(text: "${numberOfWeeks.toStringAsFixed(0)} weeks"),
      ));
    
    }
  }

}
