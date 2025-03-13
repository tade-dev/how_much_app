import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/proposals/data/datasource/pricing_service.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:how_much_app/features/proposals/domain/repositories/pricing_r.dart';
import 'package:injectable/injectable.dart';

@Named("PricingRepository")
@Injectable(as: PricingRepository)

class PricingImpl extends PricingRepository {

  final PricingService pricingService;

  PricingImpl(@Named("pricingsource") this.pricingService);

  @override
  Future<Either<AppError, ProposalDetailModel>> getAllPricing() async {
    try {
      final dataResp = await pricingService.getAllPricing();
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(ProposalDetailModel.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

  @override
  Future<Either<AppError, GenPricingResponse>> generatePricing({pricingDetails}) async {
    try {
      final dataResp = await pricingService.generatePricing(pricingDetails: pricingDetails);
      log('dataResp:: $dataResp');
      return Right(dataResp);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
        return Right(GenPricingResponse.fromJson(e.response!.data));
      } else {
        return Left(AppError(e.message ?? "Unexpected error please try again"));
      }
    }
  }

}
