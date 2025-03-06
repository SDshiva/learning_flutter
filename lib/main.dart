import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'router/routes.dart';
import 'shared_preference/shared_preference.dart';
import 'theme/theme_data.dart';
import 'theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = goRouter;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      routerConfig: _router,
      builder:
          (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(
                start: 0,
                end: 450,
                name: MOBILE,
              ), // Mobile screens
              const Breakpoint(start: 451, end: 800, name: TABLET), // Tablets
              const Breakpoint(
                start: 801,
                end: 1920,
                name: DESKTOP,
              ), // Desktops
              const Breakpoint(
                start: 1921,
                end: double.infinity,
                name: '4K',
              ), // Large screens
            ],
          ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
    );
  }
}
