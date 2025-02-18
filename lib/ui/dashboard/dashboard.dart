import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
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
            child: buildForDashboardV(),
          )
        ],
      ),
    );
  }

  buildForDashboardV() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: ColorsX.textColor,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: GestureDetector(
              onTap: () {
                _pageController.jumpToPage(0);
              },
              child: Icon(
                Iconsax.home,
                color: currentPage == 0.0 ?
                ColorsX.primaryColor:
                ColorsX.textGrey
              ),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: GestureDetector(
              onTap: () {
                _pageController.jumpToPage(1);
              },
              child: Icon(
                Iconsax.box,
                color: currentPage == 1.0 ?
                ColorsX.primaryColor:
                ColorsX.textGrey
              ),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: GestureDetector(
              onTap: () {
                _pageController.jumpToPage(2);
              },
              child: Icon(
                Iconsax.setting,
                color: currentPage == 2.0 ?
                ColorsX.primaryColor:
                ColorsX.textGrey
              ),
            ),
          ),
        ],
      ),
    ).animate()
    .fade(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut
    )
    .scale(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut
    );
  }

}