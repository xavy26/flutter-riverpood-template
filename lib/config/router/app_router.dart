import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:piatti_app/auth/auth.dart';
import 'package:piatti_app/config/config.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final goRouterNotifier = ref.watch(goRouterNotifierProvider);

  return GoRouter(
    initialLocation: LoginScreen.path,
    refreshListenable: goRouterNotifier,
    routes: [
      // Login Route
      GoRoute(
        path: LoginScreen.path,
        name: LoginScreen.name,
        builder: (context, state) => const LoginScreen(),
      ),
      
    ],
    redirect: (context, state) {
      return null;
    },
  );
});