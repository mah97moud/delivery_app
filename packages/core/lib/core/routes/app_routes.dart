import 'package:categories/categories.dart';
import 'package:core/core/routes/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:splash/splash.dart';

class AppRoutes {
  AppRoutes._shared();
  static final instance = AppRoutes._shared();
  // factory AppRoutes() => instance;

  static GoRouter get router => _router;

  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RoutesNames.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/categories',
        name: RoutesNames.categories,
        builder: (context, state) => const CategoriesView(),
      ),
    ],
  );
}
