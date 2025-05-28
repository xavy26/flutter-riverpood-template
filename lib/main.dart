import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:piatti_app/config/config.dart';

Future<void> main() async {
  // await Env.loadEnvs();

  runApp(
    const ProviderScope(
      child: MainApp(),
    )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final appRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Piatti',
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0)
          ),
          child: child!,
        );
      }
    );
  }
}