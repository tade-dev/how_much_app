import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class PricingService {

  Future<ProposalDetailModel> getAllPricing();

  Future<GenPricingResponse> generatePricing({pricingDetails});

}