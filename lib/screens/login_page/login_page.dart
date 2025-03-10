import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../helpers/assets_manager.dart';
import '../../helpers/localization_helper.dart';
import '../../helpers/responsive_widget.dart';
import '../../theme/theme_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: _LoginPageMobile(),
      desktop: _LoginPageDesktop(),
    );
  }
}

class _LoginPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      // appBar: AppBar(title: const Text('Home - Mobile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Stack(
                  //Top Container
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize:
                            MainAxisSize
                                .min, // Keeps Column height to its children
                        children: [
                          Text(
                            LocalizationHelper.translate(context, 'hi_there'),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(height: 8), // Space between texts
                          Text(
                            LocalizationHelper.translate(
                              context,
                              'requried_details',
                            ),
                          ),
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AssetsManager.googleLogo,
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    LocalizationHelper.translate(
                                      context,
                                      'google',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AssetsManager.facebookLogo,
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    LocalizationHelper.translate(
                                      context,
                                      'facebook',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    themeProvider.isDarkMode
                                        ? AssetsManager.appleDarkLogo
                                        : AssetsManager.appleLogo,
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    LocalizationHelper.translate(
                                      context,
                                      'apple',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                LocalizationHelper.translate(context, 'or'),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: LocalizationHelper.translate(context, 'username'),
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: LocalizationHelper.translate(context, 'password'),
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    LocalizationHelper.translate(context, 'forgot_password'),
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    LocalizationHelper.translate(context, 'login'),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text.rich(
                TextSpan(
                  text: LocalizationHelper.translate(context, 'new_here'),
                  children: [
                    TextSpan(text: '  '),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          context.go('/register');
                        },
                        child: Text(
                          LocalizationHelper.translate(
                            context,
                            'create_account',
                          ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Center(
                child: Text(
                  LocalizationHelper.translate(context, 'login'),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: LocalizationHelper.translate(
                          context,
                          'username',
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: LocalizationHelper.translate(
                          context,
                          'password',
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          LocalizationHelper.translate(context, 'login'),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text.rich(
                      TextSpan(
                        text: LocalizationHelper.translate(context, 'new_here'),
                        children: [
                          TextSpan(text: '  '),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                context.go('/register');
                              },
                              child: Text(
                                LocalizationHelper.translate(
                                  context,
                                  'create_account',
                                ),
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
