import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../helpers/assets_manager.dart';
import '../../helpers/localization_helper.dart';
import '../../helpers/responsive_widget.dart';
import '../../theme/theme_provider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: _OnBoardingPageMobile(),
      desktop: _OnBoardingPageDesktop(),
    );
  }
}

class _OnBoardingPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          /// Background Image
          !themeProvider.isDarkMode
              ? Positioned.fill(
                child: Image.asset(
                  AssetsManager.appBackground,
                  fit: BoxFit.fill, // Ensures image covers the full screen
                ),
              )
              : Container(),

          Positioned(
            bottom: height * 0.02,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: width,
                height: height * 0.5,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocalizationHelper.translate(
                              context,
                              'testing_app',
                            ),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            LocalizationHelper.translate(context, 'ongo_msg'),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Container(
                      height: height * 0.10,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: width * 0.25,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: Lottie.asset(
                              AssetsManager.swipeRight,
                              width: width * 0.1,
                              height: height * 0.1,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OnBoardingPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
