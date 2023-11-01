import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app_devta/config/app_theme.dart';
import 'package:widget_app_devta/config/router/app_router.dart';
import 'package:widget_app_devta/presentation/provider/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final bool isDarkmode = ref.watch(isDarkmodeProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      //  AppTheme(selectedColor: selectedColor, isDarkmode: isDarkmode)
      //     .getTheme(),
    );
  }
}
