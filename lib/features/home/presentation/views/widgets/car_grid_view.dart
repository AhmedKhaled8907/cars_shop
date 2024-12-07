import 'package:cars_shop/core/utils/resources/app_routes.dart';
import 'package:cars_shop/features/car_details/data/models/car_details_model.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarGridView extends StatelessWidget {
  const CarGridView({
    super.key,
    required this.carsList,
  });

  final List<CarModel> carsList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
      ),
      itemCount: carsList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(
              AppRoutes.kCarDetailsRoute,
              extra: CarDetailsArgs(
                carModel: carsList[index],
                carDetailsModel: CarDetailsModel(),
              ),
            );
          },
          child: CarItem(
            carModel: carsList[index],
          ),
        );
      },
    );
  }
}
