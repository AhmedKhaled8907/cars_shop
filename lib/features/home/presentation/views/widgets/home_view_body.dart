import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/banner_image.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_country_list_view.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_grid_view.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryListView(),
                SizedBox(height: AppSize.s16),
                BannerImage(),
                SizedBox(height: AppSize.s16),
                SearchTextField(),
                SizedBox(height: AppSize.s16),
                CarCountryListView(),
                SizedBox(height: AppSize.s16),
              ],
            ),
          ),
          CarGridView(
            carsList: listOfCars,
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: AppSize.s16),
                BannerImage(),
              ],
            ),
          )
        ],
      ),
    );

    // const SingleChildScrollView(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         CategoryListView(),
    //         SizedBox(height: AppSize.s16),
    //         BannerImage(),
    //         SizedBox(height: AppSize.s16),
    //         SearchTextField(),
    //         SizedBox(height: AppSize.s16),
    //         CarCountryListView(),
    //         SizedBox(height: AppSize.s16),
    //         CarGridView(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
