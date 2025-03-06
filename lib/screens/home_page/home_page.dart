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
      drawer: Drawer(
        elevation: 5,
        semanticLabel: ".",
        backgroundColor: Colors.transparent,
        child: Container(
          margin: EdgeInsets.only(
            top: 40,
            bottom: 40,
            left: 20,
            // right: 40,
          ), // Margin for detached look
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ), // Rounded right corners
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
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
