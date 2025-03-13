import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/widgets/inputs/proposal_input_field.dart';

class AdvancedFeaturesView extends StatelessWidget {
  const AdvancedFeaturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricingCubit, PricingState>(
      builder: (context, state) {
        return Column(
          children: [
            ProposalInputField(
              onChanged: (v) {},
              onTap: () {},
              controller: state.featureText,
              suffixIcon: SizedBox(
                height: 30,
                width: 50,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      context.read<PricingCubit>().addToAdvancedFeatures();
                    },
                    child: Text(
                      "Add",
                      style: getSemiBoldStyle(
                          color: ColorsX.primaryColor, fontSize: 16),
                    ),
                  ),
                ),
              ),
              label: "Advanced Features",
            ).animate().fade(duration: 500.ms),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              children: List.generate(state.advancedFeaturesList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Chip(
                      backgroundColor: Colors.white,
                      deleteIcon: Icon(
                        Icons.close,
                        color: ColorsX.textColor,
                      ),
                      onDeleted: () {
                        context.read<PricingCubit>().removeFromAdvancedFeatures(state.advancedFeaturesList[index]);
                      },
                      label: Text(
                        state.advancedFeaturesList[index],
                        style: getMediumStyle(
                            color: ColorsX.textColor, fontSize: 14),
                      )),
                );
              }),
            ),
          ],
        );
      },
    );
  }
}
