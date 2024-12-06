import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  // Routes
  static const kInitialRoute = '/';
  static const kHomeRoute = '/home';

  static final routes = GoRouter(
    routes: [
      // GoRoute(
      //   path: kHomeRoute,
      //   builder: (context, state) => const HomeView(),
      // ),
    ],
  );
}
