import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ProposalTile extends StatefulWidget {

  ProposalTile({
    super.key,
    required this.onTap,
    required this.proposals
  });

  Function() onTap;
  final List<Map<String, dynamic>> proposals;


  @override
  State<ProposalTile> createState() => _ProposalTileState();
  
}

class _ProposalTileState extends State<ProposalTile> {

  bool isSelected = false;
  late Map<String, List<Map<String, dynamic>>> groupedProposals;
  String? selectedMonth;



  Map<String, List<Map<String, dynamic>>> groupProposalsByMonth(List<Map<String, dynamic>> proposals) {
    Map<String, List<Map<String, dynamic>>> groupedData = {};

    for (var proposal in proposals) {
      DateTime date = DateTime.parse(proposal["createdAt"]);
      String monthKey = DateFormat("MMMM yyyy").format(date);

      if (!groupedData.containsKey(monthKey)) {
        groupedData[monthKey] = [];
      }
      groupedData[monthKey]!.add(proposal);
    }

    log("Grouped data: ${groupedData.toString()}");

    return groupedData;
  }

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    widget.onTap();
  }

  @override
  void initState() {
    super.initState();
    groupedProposals = groupProposalsByMonth(widget.proposals);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: groupedProposals.keys.map((month){
          return GestureDetector(
            onTap: _toggleSelection,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(bottom: isSelected ? 10 : 15), // Animates margin
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        month,
                        style: getBoldStyle(
                          color: ColorsX.textColor,
                          fontSize: 25,
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder: (child, animation) => ScaleTransition(
                          scale: animation,
                          child: child,
                        ),
                        child: Icon(
                          isSelected
                              ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          color: ColorsX.textColor,
                          size: 20,
                          key: ValueKey(isSelected),
                        ),
                      )
                    ],
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    child: Visibility(
                      visible: isSelected,
                      child: Column(
                        children: groupedProposals[month]!
                            .map<Widget>((proposal) => buildProposalTile(
                                  onTap: () {},
                                  title: proposal["priceRange"],
                                  desc: "Timeline: ${proposal["requiredTimeline"]}",
                                ))
                            .toList(),
                      ),
                    )
                  )
                ],
              ),
            ),
          );
        }).toList()
      ),
    );
  }


  buildProposalTile({
    required Function() onTap,
    required String title,
    required String desc,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorsX.primaryColor.withOpacity(0.2),
                  child: Icon(
                    HugeIcons.strokeRoundedDocumentAttachment,
                    color: ColorsX.primaryColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: getSemiBoldStyle(
                        color: ColorsX.textColor,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      desc,
                      style: getMediumStyle(
                        color: ColorsX.textGrey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}