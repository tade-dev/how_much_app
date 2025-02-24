import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class PricingRepository {

  Future<Either<AppError, ProposalDetailModel>> getAllPricing();
  Future<Either<AppError, GenPricingResponse>> generatePricing({pricingDetails});

}