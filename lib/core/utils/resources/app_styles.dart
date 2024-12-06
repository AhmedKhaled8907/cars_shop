import 'package:cars_shop/core/utils/resources/app_colors.dart';
import 'package:cars_shop/core/utils/resources/app_fonts.dart';
import 'package:cars_shop/core/utils/resources/app_size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor.withOpacity(0.8),
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s12,
      ),
      fontWeight: FontWeights.regular,
    );
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s12,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s14,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s16,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s18,
      ),
      fontWeight: FontWeights.medium,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s16,
      ),
      fontWeight: FontWeights.bold,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(
        context,
        fontSize: FontSize.s18,
      ),
      fontWeight: FontWeights.bold,
    );
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < AppSizeConfig.tabletWidth) {
    return width / 400;
  } else if (width < AppSizeConfig.desktopWidth) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
