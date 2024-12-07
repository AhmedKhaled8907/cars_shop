import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/app_assets.dart';
import '../../../../../core/utils/resources/app_values.dart';
import '../../../../../core/utils/widgets/app_bar_item.dart';
import '../../../../home/presentation/views/widgets/car_info_item.dart';

class CarDetailsHeader extends StatelessWidget {
  const CarDetailsHeader({
    super.key,
    required this.carModel,
  });

  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        _headerImage(size),
        _headerAppBar(context),
        _headerData(),
      ],
    );
  }

  Image _headerImage(Size size) {
    return Image.asset(
      carModel.image,
      height: size.height * 0.3,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  Positioned _headerData() {
    return Positioned(
      bottom: -50,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CarInfoItem(
                title: 'المحرك/سلندر',
                image: AppAssets.imagesIconsCarPageSlender,
                number: carModel.slender!,
              ),
            ),
            const SizedBox(width: AppSize.s8),
            Expanded(
              child: CarInfoItem(
                title: 'سنة الصنع',
                image: AppAssets.imagesIconsHomeAd2,
                number: carModel.productionYear,
              ),
            ),
            const SizedBox(width: AppSize.s8),
            Expanded(
              child: CarInfoItem(
                title: 'الممشي',
                image: AppAssets.imagesIconsHomeAd3,
                number: carModel.productionYear,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _headerAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p8,
      ),
      child: Row(
        children: [
          AppBarItem(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          const AppBarItem(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
          const AppBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
