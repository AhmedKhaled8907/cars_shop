import 'package:cars_shop/core/utils/resources/app_assets.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.4,
      width: double.infinity,
      child: Image.asset(
        AppAssets.imagesImage3,
        fit: BoxFit.fill,
      ),
    );
  }
}
