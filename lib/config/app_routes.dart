import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_apps/models/news.dart';
import 'package:navigator_apps/modul/home_screen/home_screen.dart';
import 'package:navigator_apps/modul/news_detail_screen/news_detail_screen.dart';
import 'package:navigator_apps/modul/splash_screen/splash_screen.dart';

import '../models/user.dart';
import '../modul/profile_screen/profile_screen.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String newsDetail = "news-detail";
  static const String profileDetail = "profile-detail";

  static Page _splashScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _profileScreenBuilder(BuildContext context, GoRouterState state) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra as User;
    } else {
      user = User.dummy();
    }
    return MaterialPage(
      child: ProfileScreen(
        user: user,
      ),
    );
  }

  static Page _homeScreenBuilder(BuildContext context, GoRouterState state) {
    if (state.extra != null && state.extra is User) {
    } else {
    }
    return const MaterialPage(
      child: HomeScreen(),
    );
  }

  static Page _newsDetailScreenBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    // ignore: unnecessary_null_comparison
    if (state.params["id"]! != null) {
      return MaterialPage(
        child: NewsDetailScreen(
          news: state.extra as News,
        ),
      );
    } else {
      return const MaterialPage(
          child: Scaffold(
        body: Center(
          child: Text("Data is Empty"),
        ),
      ));
    }
  }

  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splashScreenBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenBuilder,
        routes: [
          GoRoute(
            name: newsDetail,
            path: "news-detail/:id",
            pageBuilder: _newsDetailScreenBuilder,
          ),
          GoRoute(
            name: profileDetail,
            path: "profile-detail",
            pageBuilder: _profileScreenBuilder,
          ),
        ],
      ),
    ],
    initialLocation: "/splash",
  );
}