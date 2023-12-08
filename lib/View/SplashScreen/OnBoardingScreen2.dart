import 'package:flutter/material.dart';
import 'package:realestate/View/LoginScreen.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const routename = 'OnboardingScreen';
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _onboardingPages = [
    OnboardingPage(
      number: '1',
      description: 'Let life be immersed in\nnature"s embrace.',
      image: 'assets/onboarding_image1.png',
    ),
    OnboardingPage(
      number: '2',
      description: 'Enjoy the luxury of hassle-free\nparking at your doorstep.',
      image: 'assets/onboarding_image2.png',
    ),
    OnboardingPage(
      number: '3',
      description: 'Ensures a secure living\nenvironment for peace of\nmind.',
      image: 'assets/onboarding_image3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _onboardingPages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return _onboardingPages[index];
            },
          ),
          Positioned(
              bottom: 20.h,
              left: 40.w,
              right: 20,
              child: SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: kPrimaryColor,
                    radius: 2.w),
                count: 3,
                controller: _pageController,
              )),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {
                  _currentPage == 2
                      ? Navigator.pushReplacementNamed(
                          context, LoginScreen.routename)
                      : _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                },
                child: Text('Next'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String number;
  final String description;
  final String image;

  OnboardingPage({
    required this.number,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
            child: Image.asset('Assets/$number.png'),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
