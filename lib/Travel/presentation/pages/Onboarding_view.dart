import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingPageType1(),
          OnboardingPageType2(),
        ],
      ),
    );
  }
}

class OnboardingPageType1 extends StatelessWidget {
  const OnboardingPageType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset("TravelAssets/onboarding/onboarding_1.png",
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withValues(alpha:0.7),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  fontFamily: "Urbanist",
                ),
              ),
              Text(
                "Air Travel",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 64,
                  fontFamily: "Urbanist",
                ),
              ),
              Text(
                "The best furniture e-commerce app of the century for your daily needs!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Urbanist",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 84,
              )
            ],
          ),
        )
      ],
    );
  }
}

class OnboardingPageType2 extends StatefulWidget {
  const OnboardingPageType2({super.key});

  @override
  State<OnboardingPageType2> createState() => _OnboardingPageType2State();
}

class _OnboardingPageType2State extends State<OnboardingPageType2> {
  final PageController _innerPageController = PageController();

  void _nextInnerPage() {
    if (_innerPageController.hasClients) {
      _innerPageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: _innerPageController,
          children: [
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              "TravelAssets/onboarding/onboarding_2.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              "TravelAssets/onboarding/onboarding_3.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              "TravelAssets/onboarding/onboarding_4.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
          width: double.infinity,
          height: 370,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Text(
            textAlign: TextAlign.center,
            "We provide high quality products just for you",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 40,
              fontFamily: "Urbanist",
            ),
          ),
        ),
        GestureDetector(
          onTap: _nextInnerPage,
          child: Container(
            height: 58,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: Color(0xff3BB77E),
            ),
            child: Center(
              child: Text(
                "Keyingi",
                style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
