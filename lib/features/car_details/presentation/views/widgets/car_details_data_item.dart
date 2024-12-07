import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/app_styles.dart';

class CarDetailsDataItem extends StatelessWidget {
  const CarDetailsDataItem({
    super.key,
    required this.answer,
    required this.title,
  });

  final String answer;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppSize.s4,
      ),
      margin: const EdgeInsets.only(bottom: AppSize.s4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                title,
                style: AppStyles.styleBold16(context),
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                answer,
                style: AppStyles.styleBold16(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
