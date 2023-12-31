import 'package:delivery_app/core/routes/route_names.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/cart.dart';
import '../../features/categories/categories.dart';
import '../../features/home/home.dart';
import '../../features/payment/views/payment_view.dart';
import '../../features/profile/profile.dart';
import '../../features/splash/splash.dart';

class AppRoutes {
  AppRoutes._shared();
  static final instance = AppRoutes._shared();
  // factory AppRoutes() => instance;

  static GoRouter get router => _router;
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(
    debugLabel: 'root',
  );

  static final _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        name: RoutesNames.splash,
        builder: (context, state) => const SplashView(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeView(
            navigationShell: navigationShell,
            key: const ValueKey('ScaffoldWithNavBar'),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/categories',
                name: RoutesNames.categories,
                builder: (context, state) => CategoriesView(
                  key: state.pageKey,
                ),
                routes: [
                  GoRoute(
                    path: 'category',
                    name: RoutesNames.category,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        key: state.pageKey,
                        transitionDuration: const Duration(milliseconds: 500),
                        child: const CategoryView(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: CurveTween(
                              curve: Curves.easeInOutCirc,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'categoryItem',
                        name: RoutesNames.categoryItem,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            key: state.pageKey,
                            transitionDuration: const Duration(milliseconds: 500),
                            child: const CategoryItemView(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/cart',
                name: RoutesNames.cart,
                builder: (context, state) => CartView(
                  key: state.pageKey,
                ),
                routes: [
                  GoRoute(
                      path: 'checkout',
                      name: RoutesNames.checkout,
                      parentNavigatorKey: _rootNavigatorKey,
                      pageBuilder: (context, state) {
                        return CustomTransitionPage(
                          key: state.pageKey,
                          transitionDuration: const Duration(milliseconds: 500),
                          child: const CheckoutView(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: CurveTween(
                                curve: Curves.easeInOutCirc,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        );
                      },
                      routes: [
                        GoRoute(
                          path: 'payment',
                          name: RoutesNames.payment,
                          parentNavigatorKey: _rootNavigatorKey,
                          pageBuilder: (context, state) {
                            return CustomTransitionPage(
                              key: state.pageKey,
                              transitionDuration: const Duration(milliseconds: 300),
                              child: const PaymentView(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return SlideTransition(
                                  position:
                                      Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
                                          .animate(
                                    CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticIn,
                                    ),
                                  ),
                                  child: child,
                                );
                              },
                            );
                          },
                        ),
                      ]),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: RoutesNames.profile,
                builder: (context, state) => ProfileView(
                  key: state.pageKey,
                ),
                routes: const [],
              ),
            ],
          )
        ],
      ),
    ],
  );
}
