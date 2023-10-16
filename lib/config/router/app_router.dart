import 'package:go_router/go_router.dart';
import 'package:widget_app_devta/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/', // opcional
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);
