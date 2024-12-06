import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/resources/app_styles.dart';
import '../../../../../core/utils/resources/app_values.dart';

class CarInfoItem extends StatelessWidget {
  const CarInfoItem({
    super.key,
    required this.title,
    required this.image,
    required this.number,
  });

  final String title;
  final String image;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p4,
          // horizontal: AppPadding.p8,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s12),
          ),
          border: Border.all(
            color: Colors.grey[900]!,
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              image,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppStyles.styleMedium14(context).copyWith(),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$number',
                style: AppStyles.styleMedium14(context).copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
