import 'package:cars_shop/core/layouts/dashboard_view.dart';
import 'package:cars_shop/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kHomeRoute = '/home';

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
    ],
  );
}
