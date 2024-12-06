import 'package:cars_shop/presentation/layouts/adaptive_layout.dart';
import 'package:cars_shop/presentation/layouts/mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const SizedBox(),
    );
  }
}
