import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:how_much_app/core/entites/no_params.dart';
import 'package:how_much_app/core/usecases/usecases.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_req.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:how_much_app/features/proposals/domain/repositories/pricing_r.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllPricingUsecase extends UseCase<ProposalDetailModel, NoParams> {
  final PricingRepository pricingRepository;

  GetAllPricingUsecase(@Named("PricingRepository") this.pricingRepository);

  @override
  Future<Either<AppError, ProposalDetailModel>> call(params) async {
    return await pricingRepository.getAllPricing();
  }
}

@injectable
class GeneratePricingUsecase extends UseCase<GenPricingResponse, GenPricingReq> {
  final PricingRepository pricingRepository;

  GeneratePricingUsecase(@Named("PricingRepository") this.pricingRepository);

  @override
  Future<Either<AppError, GenPricingResponse>> call(params) async {
    return await pricingRepository.generatePricing(
      pricingDetails: params.pricingDetails?.toJson()
    );
  }
}
