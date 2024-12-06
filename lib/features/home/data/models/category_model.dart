import 'package:cars_shop/core/utils/resources/app_assets.dart';

class CategoryModel {
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
    image: AppAssets.imagesImage1,
    title: 'جيلي',
  ),
  CategoryModel(
    image: AppAssets.imagesImage2,
    title: 'بي ام دبليو',
  ),
  CategoryModel(
    image: AppAssets.imagesImage3,
    title: 'تويوتا',
  ),
  CategoryModel(
    image: AppAssets.imagesImage4,
    title: 'جيلي',
  ),
  CategoryModel(
    image: AppAssets.imagesImage1,
    title: 'جيلي',
  ),
  CategoryModel(
    image: AppAssets.imagesImage2,
    title: 'بي ام دبليو',
  ),
  CategoryModel(
    image: AppAssets.imagesImage3,
    title: 'تويوتا',
  ),
  CategoryModel(
    image: AppAssets.imagesImage4,
    title: 'جيلي',
  ),
];
