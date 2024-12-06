import 'package:cars_shop/core/utils/resources/app_colors.dart';
import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_info_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/app_assets.dart';
import '../../../../../core/utils/resources/app_styles.dart';

class CarItem extends StatelessWidget {
  const CarItem({
    super.key,
    required this.carModel,
  });

  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p8,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        color: AppColors.grey,
      ),
      child: Column(
        children: [
          carItemTitle(context),
          const SizedBox(height: AppSize.s8),
          carItemImage(context),
          carInfoItems()
        ],
      ),
    );
  }

  Row carInfoItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: CarInfoItem(
            title: 'السعر',
            image: AppAssets.imagesIconsHomeAd1,
            number: carModel.price,
          ),
        ),
        const SizedBox(width: AppSize.s2),
        Expanded(
          child: CarInfoItem(
            title: 'سنة الصنع',
            image: AppAssets.imagesIconsHomeAd2,
            number: carModel.productionYear,
          ),
        ),
        const SizedBox(width: AppSize.s2),
        Expanded(
          child: CarInfoItem(
            title: 'كم',
            image: AppAssets.imagesIconsHomeAd3,
            number: carModel.km,
          ),
        ),
        const SizedBox(width: AppSize.s2),
        Expanded(
          child: CarInfoItem(
            title: 'مكفولة ل',
            image: AppAssets.imagesIconsHomeAd4,
            number: carModel.startSellingAt,
          ),
        ),
      ],
    );
  }

  Widget carItemImage(BuildContext context) {
    return Image.asset(
      carModel.image,
      height: MediaQuery.of(context).size.width * 0.4,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  Center carItemTitle(BuildContext context) {
    return Center(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          '${carModel.title} | يوكن | ${carModel.grade}',
          style: AppStyles.styleMedium14(context).copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
