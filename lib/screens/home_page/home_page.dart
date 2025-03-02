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
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme App'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Consumer<ThemeProvider>(
              builder: (context, value, child) {
                return IconButton(
                  // key: ValueKey<bool>(
                  //     themeProvider.themeMode == ThemeMode.dark),
                  icon:
                      value.themeMode == ThemeMode.dark
                          ? Icon(Icons.dark_mode, size: 28)
                          : Icon(Icons.light_mode, size: 28),
                  onPressed: () {
                    value.toggleTheme();
                  },
                );
              },
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
