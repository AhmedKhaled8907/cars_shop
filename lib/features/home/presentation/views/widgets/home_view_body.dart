import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/banner_image.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryListView(),
          SizedBox(height: AppSize.s16),
          BannerImage(),
          SizedBox(height: AppSize.s16),
          SearchTextField()
        ],
      ),
    );
  }
}
