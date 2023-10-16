import 'package:flutter/material.dart';
import 'package:widget_app_devta/config/app_theme.dart';

import 'package:widget_app_devta/presentation/screens/screens.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons':(_) => const ButtonsScreen(),
        '/card': (_) => const CardsScreen(),

      },
    );
  }
}