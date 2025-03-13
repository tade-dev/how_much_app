import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/entites/no_params.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_req.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:how_much_app/features/proposals/domain/usecases/pricing_u.dart';
import 'package:injectable/injectable.dart';

part 'pricing_state.dart';
part 'pricing_cubit.freezed.dart';


@injectable
class PricingCubit extends Cubit<PricingState> {

  GetAllPricingUsecase getAllPricingUsecase;
  GeneratePricingUsecase generatePricingUsecase;

  PricingCubit({

    required this.generatePricingUsecase,
    required this.getAllPricingUsecase

  }) : super(const PricingState());

  resetState() {
    emit(const PricingState());
  }

  clearState() {
    emit(state.copyWith(
      advancedFeaturesList: [],
      // advancedFeaturesList: [],
    ));
  }

  updateDescriptionText(v) {
    emit(state.copyWith(
      description: v
    ));
  }

  updateSelectedCurrency(v) {
    emit(state.copyWith(
      selectedCurrency: v
    ));
  }

  updateProjectCost(v) {
    emit(state.copyWith(
      projectCost: v
    ));
    log(state.projectCost);

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

  getAllPricing() async {
    
    emit(state.copyWith(
      getPricingStatus: FormzSubmissionStatus.inProgress,
      proposalList: []
    ));

    var resp = await getAllPricingUsecase(NoParams());

    resp.fold((l) {

      emit(state.copyWith(
        proposalList: [],
        getPricingStatus: FormzSubmissionStatus.failure
      ));

    }, (r){

      emit(state.copyWith(
        proposalList: r.data ?? [],
        getPricingStatus: FormzSubmissionStatus.success
      ));

    });
  }

  generatePricingProposal() async {
    
    emit(state.copyWith(
      generationStatus: FormzSubmissionStatus.inProgress,
    ));

    log(state.projectCost);

    var generateParams = GenPricingReq(pricingDetails: PricingDetails(
      projectDescription: state.description,
      requiredTimeline: state.timeline?.text,
      currency: state.selectedCurrency,
      estimatedCost: int.parse(state.projectCost.replaceAll(",", "").split(".").first),
      advancedFeatures: state.advancedFeaturesList,
    ));

    log(generateParams.toString());

    var resp = await generatePricingUsecase(generateParams);

    resp.fold((l) {

      emit(state.copyWith(
        generationStatus: FormzSubmissionStatus.failure,
        exceptionError: l.message
      ));

    }, (r){

      if(r.error?.isNotEmpty ?? false) {

        emit(state.copyWith(
          generationStatus: FormzSubmissionStatus.failure,
          genPricingResponse: r
        ));

      }else {

        emit(state.copyWith(
          generationStatus: FormzSubmissionStatus.success,
          genPricingResponse: r,
          genPricingResponseData: r.data
        ));

        getAllPricing();

      }

    });
  }

}
