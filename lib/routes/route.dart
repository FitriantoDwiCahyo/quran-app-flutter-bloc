import 'package:go_router/go_router.dart';
import 'package:quran_app_review/pages/get_started_screen.dart';

import '../pages/home_screen.dart';

part './route_name.dart';

// GoRouter configuration
final router = GoRouter(
  
  routes: [
    GoRoute(
      path: '/',
      name: RouteName.started,
      builder: (context, state) => GetStartedScreen(),
      
    ),
    GoRoute(
      path: '/home',
      name: RouteName.home,
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
