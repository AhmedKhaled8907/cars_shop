import 'package:cars_shop/features/car_details/data/models/car_details_model.dart';
import 'package:cars_shop/features/car_details/presentation/views/widgets/car_details_view_body.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({
    super.key,
    required this.carModel,
    required this.carDetailsModel,
  });

  final CarModel carModel;
  final CarDetailsModel carDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarDetailsViewBody(
          carModel: carModel,
          carDetailsModel: carDetailsModel,
        ),
      ),
    );
  }
}
