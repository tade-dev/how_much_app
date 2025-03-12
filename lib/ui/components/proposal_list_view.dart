import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';

// ignore: must_be_immutable
class ProposalListView extends StatelessWidget {
  ProposalListView({
    super.key,
    required this.onTap,
  });

  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PricingCubit, PricingState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.png.box.path,
                height: 150,
                width: 150,
              ),
              Text(
                "No proposals created!",
                style: getBoldStyle(color: ColorsX.textColor, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Buttons.primaryButton(
                label: "Generate",
                onTap: onTap,
                hasIcon: false,
              )
            ],
          ).animate().fade(
            duration: const Duration(milliseconds: 500),
            delay: const Duration(milliseconds: 1500),
          ),
        );
      },
    );
  }
}
