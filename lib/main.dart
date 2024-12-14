import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/launch/start.dart';
import 'views/launch/tracking.dart';
import 'views/launch/comparison.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Job Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    // Define the route for StartPage
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const StartPage();
        },
        pageBuilder: (BuildContext context, GoRouterState state) {
          // Custom transition for StartPage using FadeTransition
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const StartPage(),
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
    GoRoute(
      path: '/tracking',
      builder: (context, state) => const TrackingPage(),
      pageBuilder: (BuildContext context, GoRouterState state) {
          // Custom transition for StartPage using FadeTransition
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const TrackingPage(),
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
    ),
        GoRoute(
      path: '/comparison',
      builder: (context, state) => const ComparisonPage(),
      pageBuilder: (BuildContext context, GoRouterState state) {
          // Custom transition for StartPage using FadeTransition
          return CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ComparisonPage(),
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
    ),

  ],
);