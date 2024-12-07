import 'package:cars_shop/core/utils/resources/app_assets.dart';
import 'package:cars_shop/core/utils/resources/app_styles.dart';
import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:cars_shop/features/car_details/data/models/car_details_model.dart';
import 'package:cars_shop/features/car_details/presentation/views/widgets/car_details_data_item.dart';
import 'package:cars_shop/features/car_details/presentation/views/widgets/car_details_header.dart';
import 'package:cars_shop/features/home/data/models/car_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/banner_image.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/car_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarDetailsViewBody extends StatelessWidget {
  const CarDetailsViewBody({
    super.key,
    required this.carModel,
    required this.carDetailsModel,
  });

  final CarModel carModel;
  final CarDetailsModel carDetailsModel;

  @override
  Widget build(BuildContext context) {
    final details = [
      {
        'title': 'اللون الخارجي',
        'answer': carDetailsModel.outsideColor,
      },
      {
        'title': 'اللون الداخلي',
        'answer': carDetailsModel.insideColor,
      },
      {
        'title': 'نوع المقعد',
        'answer': carDetailsModel.seatType,
      },
      {
        'title': 'فتحة السقف',
        'answer': carDetailsModel.sunRoof ? 'نعم' : 'لا',
      },
      {
        'title': 'كاميرا خلفية',
        'answer': carDetailsModel.backCamera ? 'نعم' : 'لا',
      },
      {
        'title': 'سنسور',
        'answer': carDetailsModel.sensors,
      },
      {
        'title': 'سلندر',
        'answer': carModel.slender.toString(),
      },
      {
        'title': 'ناقل الحركة',
        'answer': carDetailsModel.transmission,
      },
    ];

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CarDetailsHeader(carModel: carModel),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: AppSize.s56),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16,
            ),
            child: Column(
              children: [
                _price(context),
                const SizedBox(height: AppSize.s16),
                _granted(context),
                const SizedBox(height: AppSize.s16),
                ...details.map((detail) {
                  return CarDetailsDataItem(
                    title: detail['title']!,
                    answer: detail['answer']!,
                  );
                }),
                const SizedBox(height: AppSize.s16),
                _carSummary(context),
                const SizedBox(height: AppSize.s16),
              ],
            ),
          ),
        ),
        CarGridView(carsList: listOfCars.take(2).toList()),
        const SliverToBoxAdapter(child: SizedBox(height: AppSize.s16)),
        const SliverToBoxAdapter(child: BannerImage()),
      ],
    );
  }

  Text _carSummary(BuildContext context) {
    return Text(
      "رنجات المنيوم ۱۸ انش اسود وكروم - ديكور خشب + كروم - مقعد السائق كهربائي - دواسات جانبية - تحكم بالمقود مع تعديل يدوي F1 - نظام المرتفعات - سايد بريك كهربائي - مرأة داخليك اوتو - Traction off - USB - شاحن كهربائي - ۷ مقاعد الخلفي والوسطي قابل للاغلاق - جناح خلفي - عواكس خلفية - سيرفس منتظم بالوكالة",
      style: AppStyles.styleMedium14(context),
    );
  }

  Container _granted(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppSize.s8,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s12),
        ),
        color: Color.fromARGB(255, 165, 52, 52),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.imagesIconsCarPageDone,
            width: AppSize.s24,
          ),
          const SizedBox(width: AppSize.s16),
          Text(
            'مكفولة حتى ${carModel.km} كم',
            style: AppStyles.styleMedium18(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Row _price(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'يوكن بحالة جيدة',
          style: AppStyles.styleMedium20(context),
        ),
        Text(
          '${carModel.price} د.ك',
          style: AppStyles.styleBold24(context),
        ),
      ],
    );
  }
}
