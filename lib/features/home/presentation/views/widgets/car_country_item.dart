import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/app_styles.dart';

class CarCountryItem extends StatelessWidget {
  const CarCountryItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p8,
        horizontal: AppPadding.p16,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s16),
        ),
        color: Colors.blue[900],
      ),
      child: Text(
        title,
        style: AppStyles.styleMedium16(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
