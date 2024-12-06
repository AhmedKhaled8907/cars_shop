import 'package:cars_shop/core/utils/resources/app_size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < AppSizeConfig.tabletWidth) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < AppSizeConfig.desktopWidth) {
        return tabletLayout (context);
      } else {
        return desktopLayout (context);
      }
    });
  }
}
