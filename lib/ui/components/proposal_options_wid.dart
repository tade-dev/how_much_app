import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:hugeicons/hugeicons.dart';

class ProposalOptionsWid extends StatelessWidget {
  const ProposalOptionsWid({super.key});

  @override
  Widget build(BuildContext context) {
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

              },
            ),
            const Divider(),
            buildProposalOption(
              icon: HugeIcons.strokeRoundedDownload01,
              title: 'Download as image',
              ontap: () {},
            ),
            const Divider(),
            buildProposalOption(
              icon: HugeIcons.strokeRoundedPrinter,
              title: 'Print',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }

  buildProposalOption({icon, title, ontap}) {
    return ListTile(
      onTap: ontap,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      leading: Icon(
        icon
      ),
      title: Text(
        title,
        style: getSemiBoldStyle(fontSize: 18, color: ColorsX.textColor),
      ),
    );
  }

}