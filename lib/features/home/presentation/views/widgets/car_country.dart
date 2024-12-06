import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_country_item.dart';
import 'package:flutter/material.dart';

class CarCountry extends StatelessWidget {
  const CarCountry({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> carCountries = ['آسيوي', 'أوروبي', 'أمريكي'];

    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carCountries
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p4,
                  ),
                  child: CarCountryItem(title: e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
