import 'package:cars_shop/core/layouts/dashboard_view.dart';
import 'package:cars_shop/features/car_details/data/models/car_details_model.dart';
import 'package:cars_shop/features/car_details/presentation/views/car_details_view.dart';
import 'package:cars_shop/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kHomeRoute = '/home';
  static const kCarDetailsRoute = '/car_details';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const DashboardView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoutes.kCarDetailsRoute,
        builder: (context, state) {
          final args =
              state.extra as CarDetailsArgs;
          return CarDetailsView(
            carModel: args.carModel,
            carDetailsModel: args.carDetailsModel,
          );
        },
      ),
    ],
  );
}
