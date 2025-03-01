import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme App'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: IconButton(
                key: ValueKey<bool>(themeProvider.themeMode == ThemeMode.dark),
                icon:
                    themeProvider.themeMode == ThemeMode.dark
                        ? Icon(Icons.dark_mode, size: 28)
                        : Icon(Icons.light_mode, size: 28),
                onPressed: () {
                  themeProvider.toggleTheme();
                },
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Switch Theme",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
