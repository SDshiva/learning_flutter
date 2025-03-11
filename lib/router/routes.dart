import 'package:go_router/go_router.dart';

import '../screens/home_page/home_page.dart';
import '../screens/login_page/login_page.dart';
import '../screens/register_page/register_page.dart';
// import '../screens/splash_page/splash_page.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // GoRoute(path: '/', builder: (context, state) => SplashPage()),
    GoRoute(path: '/', builder: (context, state) => LoginPage()),
    // GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/register', builder: (context, state) => RegisterPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
  ],
);
