import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:ui' as ui;
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

  updateProjectTitle(v) {
    emit(state.copyWith(
      projectTitle: v
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
      title: state.projectTitle,
      requiredTimeline: state.timeline?.text,
      currency: state.selectedCurrency,
      // estimatedCost: int.parse(state.projectCost.replaceAll(",", "").split(".").first),
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

  final GlobalKey globalKey = GlobalKey();

  Future<void> convertToPdf({bool isShare = false, bool isImage = false, bool isPrint = false, GlobalKey? globalKey}) async {
    try {
      final pdf = pw.Document();

      pdf.addPage(
        pw.MultiPage(
          build: (context) => [
            pw.Text("Proposal Title", style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),

            pw.SizedBox(height: 20),
            pw.Text("Prepared for: John Doe"),
            pw.Text("Date: April 2025"),

            pw.SizedBox(height: 20),
            pw.Divider(),

            pw.Text("Summary", style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.Text("${state.genPricingResponseData?.pricing?.projectDescription}"),

            pw.SizedBox(height: 20),
            pw.Table.fromTextArray(
              headers: ['Item', 'Description', 'Price'],
              data: [
                ['Development', 'Mobile app using Flutter', '\$5,000'],
                ['AI Integration', 'ChatGPT-powered assistant', '\$2,000'],
              ],
            ),

            pw.SizedBox(height: 30),
            pw.Container(
              padding: const pw.EdgeInsets.all(10),
              color: PdfColors.grey300,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text("Total", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                  pw.Text("\$7,000", style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                ],
              ),
            ),

            pw.SizedBox(height: 40),
            pw.Text("Thanks for considering this proposal."),
          ],
        ),
      );

      final Directory tempDir = await getTemporaryDirectory();
      final String filePath = '${tempDir.path}/Proposal.pdf';
      final File file = File(filePath);
      await file.writeAsBytes(await pdf.save());

      if (isShare) {
        await Share.shareXFiles([XFile(filePath)], text: 'Here is your proposal PDF. 🚀');
      } else if (isImage) {
        downloadWidgetAsImage(globalKey);
      }else if (isPrint) {
        await Printing.layoutPdf(
          onLayout: (PdfPageFormat format) async => pdf.save(),
        );
      } else {
        si<AppRouter>().push(ViewProposalScreen(file: file));
      }
      
      log('PDF generated successfully');
    } catch (e) {
      log('Error generating PDF: $e');
    }

  }
  
  Future<void> downloadWidgetAsImage(GlobalKey? key, {String fileName = "captured_image"}) async {
    try {
      if (Platform.isAndroid) {
        var status = await Permission.storage.request();
        if (!status.isGranted) {
          throw Exception("Storage permission not granted");
        }
      }

      RenderRepaintBoundary boundary =
          key?.currentContext?.findRenderObject() as RenderRepaintBoundary;

      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);

      final directory = await getTemporaryDirectory();
      final filePath = "${directory.path}/$fileName.png";
      final file = File(filePath);
      await file.writeAsBytes(pngBytes);

      debugPrint("✅ Image saved to: $filePath");
    } catch (e) {
      debugPrint("❌ Error capturing image: $e");
    }
  }

}
