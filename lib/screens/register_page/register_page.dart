import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../helpers/assets_manager.dart';
import '../../helpers/localization_helper.dart';
import '../../helpers/responsive_widget.dart';
import '../../theme/theme_provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: _RegisterPageMobile(),
      desktop: _RegisterPageDesktop(),
    );
  }
}

class _RegisterPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.4,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              LocalizationHelper.translate(
                                context,
                                'create_account',
                              ),
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            SizedBox(height: 10),
                            Text(
                              LocalizationHelper.translate(
                                context,
                                'create_account_msg',
                              ),
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
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
                SizedBox(height: height * 0.02),
                Text(
                  LocalizationHelper.translate(context, 'or'),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  height: height * 0.5,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: LocalizationHelper.translate(
                                  context,
                                  'username',
                                ),
                                labelStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),

                            SizedBox(height: height * 0.02),
                            SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  LocalizationHelper.translate(
                                    context,
                                    'continue',
                                  ),
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            Text.rich(
                              TextSpan(
                                text: LocalizationHelper.translate(
                                  context,
                                  'already_have_account',
                                ),
                                children: [
                                  TextSpan(text: '  '),
                                  WidgetSpan(
                                    child: GestureDetector(
                                      onTap: () {
                                        context.go('/login');
                                      },
                                      child: Text(
                                        LocalizationHelper.translate(
                                          context,
                                          'login',
                                        ),
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                LocalizationHelper.translate(
                                  context,
                                  'terms_of_service',
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                LocalizationHelper.translate(
                                  context,
                                  'privacy_policy',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
