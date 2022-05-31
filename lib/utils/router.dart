import 'package:flutter/cupertino.dart';
import 'package:flutter_gallery_mn/pages/buttons_page.dart';
import 'package:go_router/go_router.dart';
import '../pages/error_page.dart';
import '../pages/home/home_page.dart';
import '../pages/shop/shop_page.dart';

class Routes {
  static const home = '/';
  static const shop = '/shop';
  static const buttons = '/buttons';
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
    GoRoute(
      name: Routes.buttons,
      path: Routes.buttons,
      builder: (_, __) => const ButtonsPage(),
    ),
  ],
  errorBuilder: (_, state) => ErrorPage(key: state.pageKey, exception: state.error),
);
