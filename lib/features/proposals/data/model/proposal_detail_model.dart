// To parse this JSON data, do
//
//     final proposalDetailModel = proposalDetailModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'proposal_detail_model.freezed.dart';
part 'proposal_detail_model.g.dart';

ProposalDetailModel proposalDetailModelFromJson(String str) => ProposalDetailModel.fromJson(json.decode(str));

String proposalDetailModelToJson(ProposalDetailModel data) => json.encode(data.toJson());

@freezed
class ProposalDetailModel with _$ProposalDetailModel {
    const factory ProposalDetailModel({
        bool? success,
        List<ProposalData>? data,
    }) = _ProposalDetailModel;

    factory ProposalDetailModel.fromJson(Map<String, dynamic> json) => _$ProposalDetailModelFromJson(json);
}

@freezed
class ProposalData with _$ProposalData {
    const factory ProposalData({
        String? id,
        DateTime? createdAt,
        String? projectDescription,
        String? requiredTimeline,
        int? approxNumberOfScreens,
        String? currency,
        int? estimatedCost,
        List<String>? advancedFeatures,
        String? user,
        String? priceRange,
        String? generatedInvoice,
        DateTime? updatedAt,
        int? v,
    }) = _ProposalData;

    factory ProposalData.fromJson(Map<String, dynamic> json) => _$ProposalDataFromJson(json);
}
