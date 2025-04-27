import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/sheet/h_sheets.dart';


// ignore: must_be_immutable
class ViewProposalScreen extends StatelessWidget {
  const ViewProposalScreen({
    super.key,
    this.file
  });

  final File? file;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricingCubit, PricingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HAppBars().mainAppBar(
            bgnColor: Colors.white,
            title: state.genPricingResponseData?.pricing?.id ?? "",
            w: IconButton(
              onPressed: () {
                HSheets.showProposalOptions();
              }, 
              icon: const Icon(
                Icons.more_vert
              )
            )
          ),
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    child: RepaintBoundary(
                      key: si<PricingCubit>().globalKey,
                      child: PDFView(
                        filePath: file?.path,
                      )
                      .animate()
                      .scale(),
                    )
                  ),
                ],
              ),
            ),
          ).animate().fade(duration: 500.ms),
        );
      },
    );
  }
}

String cleanText(String input) {
  List<String> words = input.split(" ");
  Set<String> seen = {};
  List<String> result = [];

  for (var word in words) {
    if (!seen.contains(word)) {
      seen.add(word);
      result.add(word);
    }
  }

  String cleanedText = result.join(" ");
  
  return cleanedText.replaceAll(RegExp(r'\n{3,}'), '\n\n');
}
