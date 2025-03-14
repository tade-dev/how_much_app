import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:how_much_app/core/api/api.dart';
import 'package:how_much_app/core/db/local_cache.dart';
import 'package:how_much_app/core/keys/endpoints.dart';
import 'package:how_much_app/features/proposals/data/datasource/pricing_service.dart';
import 'package:how_much_app/features/proposals/data/model/gen_pricing_response.dart';
import 'package:how_much_app/features/proposals/data/model/proposal_detail_model.dart';
import 'package:injectable/injectable.dart';

@Named("pricingsource")
@Injectable(as: PricingService)

class PricingSource extends PricingService {

  final Api api;

  var baseUrl = dotenv.env['BASE_URL'] ?? '';

  PricingSource({required this.api});

  @override
  Future<ProposalDetailModel> getAllPricing() async {
    try {
      String token = await UserTokenCache().getCacheUserToken();
      Response? response = await api.get(
        "$baseUrl${pricing.pricing}",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = ProposalDetailModel.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<GenPricingResponse> generatePricing({pricingDetails}) async {
    log("REQQQ:$pricingDetails");
    try {
      String token = await UserTokenCache().getCacheUserToken();
      Response? response = await api.post(
        data: {
          "proposalDetails" : pricingDetails
        },
        "$baseUrl${pricing.generatePricing}",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": "Bearer $token"
        }),
      );
      log('api-resp==> ${response?.data}');
      final r = GenPricingResponse.fromJson(response?.data);
      return r;
    } catch (e) {
      rethrow;
    }
  }

}