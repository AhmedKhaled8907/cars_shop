import 'package:cars_shop/core/utils/resources/app_colors.dart';
import 'package:cars_shop/core/utils/resources/app_styles.dart';
import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.model,
  });

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.width * 0.2,
          margin: const EdgeInsets.symmetric(
            horizontal: AppPadding.p4,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.red,
              width: AppSize.s2,
            ),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                model.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSize.s8),
        Text(
          model.title,
          style: AppStyles.styleMedium12(context),
        )
      ],
    );
  }
}
