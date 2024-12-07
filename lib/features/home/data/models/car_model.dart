import 'package:cars_shop/core/utils/resources/app_assets.dart';

class CarModel {
  final String image;
  final String title;
  final String grade;
  final int price;
  final int productionYear;
  final int km;
  final int startSellingAt;
  final int? slender;

  CarModel({
    required this.image,
    required this.title,
    required this.grade,
    required this.price,
    required this.productionYear,
    required this.km,
    required this.startSellingAt,
    this.slender = 6,
  });
}

List<CarModel> listOfCars = [
  CarModel(
    image: AppAssets.imagesImage1,
    title: 'جيلي',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage1,
    title: 'بي ام دبليو',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage3,
    title: 'تويوتا',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage4,
    title: 'جيلي',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage1,
    title: 'جيلي',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage2,
    title: 'بي ام دبليو',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage3,
    title: 'تويوتا',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
  CarModel(
    image: AppAssets.imagesImage4,
    title: 'جيلي',
    grade: 'الفئة الرابعة',
    price: 500000,
    productionYear: 2020,
    km: 10000,
    startSellingAt: 2022,
  ),
];
