import 'package:cars_shop/core/utils/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: AppSize.s8,
        left: AppSize.s8,
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black26,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
