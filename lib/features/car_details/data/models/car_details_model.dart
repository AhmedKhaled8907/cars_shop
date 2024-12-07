import 'package:cars_shop/features/home/data/models/car_model.dart';

class CarDetailsModel {
  final String outsideColor;
  final String insideColor;
  final String seatType;
  final bool sunRoof;
  final bool backCamera;
  final String sensors;
  final String transmission;

  CarDetailsModel({
    this.outsideColor = 'اسود',
    this.insideColor = 'بيج',
    this.seatType = 'كلاسيك',
    this.sunRoof = true,
    this.backCamera = true,
    this.sensors = 'أمامي و خلفي',
    this.transmission = 'أوتوماتيك',
  });
}


class CarDetailsArgs {
  final CarModel carModel;
  final CarDetailsModel carDetailsModel;

  CarDetailsArgs({
    required this.carModel,
    required this.carDetailsModel,
  });
}
