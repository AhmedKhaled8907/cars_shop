import 'package:cars_shop/core/utils/resources/app_routes.dart';
import 'package:cars_shop/core/utils/resources/app_strings.dart';
import 'package:cars_shop/core/utils/resources/app_theme.dart';
import 'package:cars_shop/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: AppStrings.appName,
      theme: AppTheme.appTheme,
      routerConfig: AppRoutes.routes,
    );
  }
}
