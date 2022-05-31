import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../ui/error_page.dart';
import '../ui/home/home_page.dart';
import '../ui/shop/shop_page.dart';

class Routes {
  static const home = '/';
  static const shop = '/shop';
}

final GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  routes: <GoRoute>[
    GoRoute(
      path: Routes.home,
      pageBuilder: (_, state) {
        return NoTransitionPage<void>(key: state.pageKey, child: const HomePage());
      },
    ),
    GoRoute(
      path: Routes.shop,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const ShopPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
      // pageBuilder: (context, state) => CupertinoPage<void>(
      //   key: state.pageKey,
      //   restorationId: state.pageKey.value,
      //   child: const ShopPage(),
      // ),
    ),
  ],
  errorBuilder: (_, state) => ErrorPage(key: state.pageKey, exception: state.error),
);
