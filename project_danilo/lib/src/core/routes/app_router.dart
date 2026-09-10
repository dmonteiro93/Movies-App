import 'package:flutter_application_1/src/core/di/injection.dart';
import 'package:flutter_application_1/src/features/forms/controllers/login_controller.dart';
import 'package:flutter_application_1/src/features/forms/ui/home_page.dart';
import 'package:flutter_application_1/src/features/forms/ui/login_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    final controller = getIt<LoginController>();
    final isAuthenticated = controller.user != null;
    final isLoginPage = state.matchedLocation == '/';

    if (!isAuthenticated && !isLoginPage) {
      return '/';
    }

    if (isAuthenticated && isLoginPage) {
      return '/home';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);