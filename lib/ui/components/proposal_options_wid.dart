import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:hugeicons/hugeicons.dart';

class ProposalOptionsWid extends StatelessWidget {
  const ProposalOptionsWid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricingCubit, PricingState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildProposalOption(
                  icon: HugeIcons.strokeRoundedPdf01,
                  title: 'Convert to PDF',
                  ontap: () {
                    si<PricingCubit>().convertToPdf();
                  },
                ),
                const Divider(),
                buildProposalOption(
                  icon: HugeIcons.strokeRoundedDownload01,
                  title: 'Download as image',
                  ontap: () {
                    si<PricingCubit>().convertToPdf(
                      isImage: true,
                      globalKey: si<PricingCubit>().globalKey
                    );
                  },
                ),
                const Divider(),
                buildProposalOption(
                  icon: HugeIcons.strokeRoundedPrinter,
                  title: 'Print',
                  ontap: () {
                    si<PricingCubit>().convertToPdf(
                      isPrint: true,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  buildProposalOption({icon, title, ontap}) {
    return ListTile(
      onTap: ontap,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      leading: Icon(icon),
      title: Text(
        title,
        style: getSemiBoldStyle(fontSize: 18, color: ColorsX.textColor),
      ),
    );
  }
}
