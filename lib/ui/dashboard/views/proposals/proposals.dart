import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/ui/widgets/inputs/search_input_field.dart';
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
              Text(
                "My Proposals",
                style: getSemiBoldStyle(
                  color: ColorsX.textColor,
                  fontSize: 16
                ),
              ),
              const SizedBox(height: 15,),
              SearchInputField(
                onChanged: (v) {

                },
                prefixIcon: Icon(
                  HugeIcons.strokeRoundedSearch01,
                  color: ColorsX.grey,
                ),
                suffixIcon: PopupMenuButton(
                  color: Colors.white,
                  popUpAnimationStyle: AnimationStyle(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 500)
                  ),
                  icon: Icon(
                    HugeIcons.strokeRoundedFilter,
                    color: ColorsX.grey,
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          const Icon(
                            HugeIcons.strokeRoundedAccess
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            "Filter by Status",
                            style: getMediumStyle(
                              color: ColorsX.textColor,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          const Icon(
                            HugeIcons.strokeRoundedCalendar01
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            "Filter by Date",
                            style: getMediumStyle(
                              color: ColorsX.textColor,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          const Icon(
                            HugeIcons.strokeRoundedUser
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            "Filter by Client",
                            style: getMediumStyle(
                              color: ColorsX.textColor,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
                hintText: "Search for Proposals...",
              )
            ],
          ),
        ),
      ),
    );
  }
}