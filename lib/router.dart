import 'package:flutter_deeplink_poc/home_page.dart';
import 'package:flutter_deeplink_poc/news_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/news/:id/:path",
    name: "news",
    builder: (context, state) => NewsPage(
      userId: state.pathParameters["id"].toString(),
      path: state.pathParameters["path"].toString(),
    ),
  )
]);
