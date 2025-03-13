import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart';
import 'package:how_much_app/ui/dashboard/views/home/home.dart';
import 'package:how_much_app/ui/dashboard/views/proposals/proposals.dart';
import 'package:how_much_app/ui/dashboard/views/settings/settings.dart';
import 'package:iconsax/iconsax.dart';


// ignore: must_be_immutable
class DashboardView extends StatefulWidget {
  DashboardView({
    super.key,
    this.initialPage = 0
  });

  int initialPage;

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  double currentPage = 0.0;
  late PageController _pageController;
  List<Widget> views = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialPage);

    _pageController.addListener((){
      currentPage = _pageController.page ?? 0;
      setState(() {});
    });

    views = [
      const HomeView(),
      const ProposalsView(),
      const SettingsView(),
    ];

    context.read<PricingCubit>().getAllPricing();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder:(context, index) => views[index],
            itemCount: views.length,
            controller: _pageController,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: buildForDashboardV(),
            )
          )
        ],
      ),
    );
  }

  buildForDashboardV() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: ColorsX.textColor,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              _pageController.jumpToPage(0);
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: currentPage == 0.0 ?
              Colors.white : Colors.transparent,
              child: Icon(
                Iconsax.home,
                color: currentPage == 0.0 ?
                ColorsX.textColor:
                Colors.white
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pageController.jumpToPage(1);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: currentPage == 1.0 ?
                Colors.white : Colors.transparent,
                child: Icon(
                  Iconsax.box,
                  color: currentPage == 1.0 ?
                  ColorsX.textColor:
                  Colors.white
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pageController.jumpToPage(2);
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: currentPage == 2.0 ?
              Colors.white : Colors.transparent,
              child: Icon(
                Iconsax.setting,
                color: currentPage == 2.0 ?
                ColorsX.textColor:
                Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }

}