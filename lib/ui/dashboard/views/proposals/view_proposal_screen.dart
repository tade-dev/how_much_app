import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';
import 'package:how_much_app/ui/widgets/sheet/h_sheets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class ViewProposalScreen extends StatelessWidget {
  const ViewProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricingCubit, PricingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HAppBars().mainAppBar(
            bgnColor: Colors.white,
            title: state.genPricingResponseData?.pricing?.id ?? "",
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "${state.genPricingResponseData?.invoice}"
                        .replaceAll("**", "")
                        .replaceAll("---", ""),
                        style: getMediumStyle(
                          color: ColorsX.textColor,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 40, right: 20, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Estimated Project Cost",
                                  style: getRegularStyle(fontSize: 14, color: ColorsX.textGrey),
                                ),
                                const SizedBox(height: 3,),
                                Text(
                                  "${state.genPricingResponseData?.pricing?.currency}${NumberFormat("#,###").format(state.genPricingResponseData?.pricing?.estimatedCost)}",
                                  style: getBoldStyle(fontSize: 20, color: ColorsX.textColor),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: (){
                                HSheets.showProposalOptions();
                              }, 
                              icon: const Icon(
                                Icons.more_vert,
                              )
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Buttons.primaryButton(
                          label: "Send proposal", 
                          hasIcon: true,
                          icon: Iconsax.send_1,
                          isIconLeft: true,
                          onTap: (){}
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ).animate().fade(duration: 500.ms),
        );
      },
    );
  }
}
