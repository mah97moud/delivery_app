import 'package:categories/categories.dart';
import 'package:categories/views/category_view.dart';
import 'package:core/core/routes/route_names.dart';
import 'package:flutter/widgets.dart';
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
        builder: (context, state) => CategoriesView(
          key: state.pageKey,
        ),
        routes: [
          GoRoute(
            path: 'category/:category',
            name: RoutesNames.category,
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                key: state.pageKey,
                transitionDuration: const Duration(milliseconds: 500),
                child: const CategoryView(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: CurveTween(
                      curve: Curves.easeInOutCirc,
                    ).animate(animation),
                    child: child,
                  );
                },
              );
            },
          ),
        ],
      ),
    ],
  );
}
