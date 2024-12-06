import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_item.dart';
import 'package:flutter/material.dart';

class CarGridView extends StatefulWidget {
  const CarGridView({super.key});

  @override
  State<CarGridView> createState() => _CarGridViewState();
}

class _CarGridViewState extends State<CarGridView> {
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
        return CarItem(
          carModel: carsList[index],
        );
      },
    );
  }
}
