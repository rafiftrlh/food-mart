import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gurutamu_mart/screens/detail_merchant_screen.dart';
import 'package:gurutamu_mart/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/details",
  // initialLocation: return HomeScreen(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailMerchantScreen();
          },
        ),
      ],
    ),
  ],
);
