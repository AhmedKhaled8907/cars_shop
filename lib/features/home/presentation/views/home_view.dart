import 'package:cars_shop/core/utils/resources/app_assets.dart';
import 'package:cars_shop/core/utils/resources/app_colors.dart';
import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: const Drawer(),
      body: const HomeViewBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.grey,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p8,
          ),
          child: IconButton(
            icon: Badge(
              label: const Text("2"),
              child: SvgPicture.asset(
                AppAssets.imagesIconsHomeNotification,
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
                fit: BoxFit.fill,
                height: AppSize.s30,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
