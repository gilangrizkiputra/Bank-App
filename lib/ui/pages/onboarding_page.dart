import 'package:bank_application/ui/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/img_onboarding1.png',
                height: 331,
              ),
              Image.asset(
                'assets/img_onboarding2.png',
                height: 331,
              ),
              Image.asset(
                'assets/img_onboarding3.png',
                height: 331,
              ),
            ],
            options: CarouselOptions(
              height: 331,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            carouselController: carouselController,
          ),
          SizedBox(height: 80),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 26),
                Text(
                  subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: currentIndex == 2 ? 38 : 50),
                currentIndex == 2
                    ? Column(
                        children: [
                          CustomFilledButton(
                            title: 'Get Started',
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sign-up', (route) => false);
                            },
                          ),
                          SizedBox(height: 20),
                          CustomTextButton(
                            title: 'Sign In',
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sign-in', (route) => false);
                            },
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Spacer(),
                          CustomFilledButton(
                            width: 150,
                            height: 50,
                            title: 'Continue',
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                        ],
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
