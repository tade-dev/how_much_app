import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/ui/components/proposal_list_view.dart';
import 'package:hugeicons/hugeicons.dart';

class ProposalsView extends StatelessWidget {
  const ProposalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Proposals",
                    style: getBoldStyle(
                      color: ColorsX.textColor,
                      fontSize: 20
                    ),
                  ).animate().slideX(duration: 300.ms, begin: -1.0, end: 0),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Icon(
                      HugeIcons.strokeRoundedFilter,
                      color: ColorsX.primaryColor,
                    )
                  ).animate().fade(
                    delay: 300.ms,
                    duration: 300.ms,
                    curve: const ElasticInOutCurve()
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Expanded(
                child: ProposalListView(onTap: (){
                  si<AppRouter>().push(ProposalDetailsScreen());
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}