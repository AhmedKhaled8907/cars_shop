import 'package:cars_shop/features/home/data/models/category_model.dart';
import 'package:cars_shop/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            model: categoriesList[index],
          );
        },
      ),
    );
  }
}
