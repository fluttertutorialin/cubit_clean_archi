import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/pages.dart';
import 'router_path.dart';

/*
   context.goNamed('/');
   context.goNamed('signUp');
   context.goNamed('forgot-password');

   context.go('/setting/contactUs', extra: argument),

   GoRoute(
            name: '',
            path: '',
            builder: (context, state) {
              return BlocProvider(
                create: (_) => getIt<SpellsBloc>()..add(const SpellsEvent.fetchSpells()),
                child: const ListingPage()
              );
            }
          )
*/

final _rootNavigatorKey = GlobalKey<NavigatorState>();

/// The route configuration.
final goRouter = GoRouter(
    initialLocation: '/',
    navigatorKey: _rootNavigatorKey,
    //navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          name: 'splash',
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashPage();
          }),

      ///AUTHENTICATION
      GoRoute(
          name: 'login',
          path: RouterPath.login,
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
          routes: <RouteBase>[
            GoRoute(
                name: 'signUp',
                path: RouterPath.signUp,
                builder: (BuildContext context, GoRouterState state) {
                  return const SignUpPage();
                }),
            GoRoute(
                name: 'forgotPassword',
                path: RouterPath.forgotPassword,
                builder: (BuildContext context, GoRouterState state) {
                  return const ForgotPasswordPage();
                })
          ]),

      ///BOTTOM BAR NAVIGATION
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomNavBar(navigationShell);
          },
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                  path: RouterPath.home,
                  builder: (context, state) => const HomePage(),
                  routes: <RouteBase>[
                    GoRoute(
                        name: 'returnScanner',
                        path: 'returnScanner',
                        builder: (BuildContext context, GoRouterState state) {
                          return ScannerPage(state.extra!.toString());
                        }),
                  ])
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                  path: '/returns',
                  builder: (context, state) =>
                      const ReturnListPage())
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: '/setting',
                builder: (context, state) => const ProfilePage(),
                /*routes: [
                        GoRoute(
                          path: 'contactUs',
                          builder: (context, state) =>
                              ContactUsPage(breed: state.extra as contactUsArgument),
                        )
                      ]*/
              )
            ])
          ])
    ]);
