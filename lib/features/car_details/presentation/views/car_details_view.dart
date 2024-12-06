import 'package:cars_shop/features/car_details/presentation/views/widgets/car_details_view_body.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:flutter/material.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({
    super.key,
    required this.carModel,
  });

  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CarDetailsViewBody(
          carModel: carModel,
        ),
      ),
    );
  }
}
