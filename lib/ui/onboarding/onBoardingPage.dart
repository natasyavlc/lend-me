import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Gambar berada di bagian atas, dan hanya gambar yang akan memiliki efek fade
              AnimatedOpacity(
                opacity: currentPage == 0 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Image.asset(
                  'assets/images/onboarding1.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedOpacity(
                opacity: currentPage == 1 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Image.asset(
                  'assets/images/onboarding2.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              AnimatedOpacity(
                opacity: currentPage == 2 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Image.asset(
                  'assets/images/onboarding3.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              onPageChanged: (int index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return _buildPage(
                  index == 0
                      ? 'Fulfill All Your Needs'
                      : index == 1
                          ? 'Trusted Merchants'
                          : 'Best quality and price',
                  index == 0
                      ? 'One application for all your needs and wants in'
                      : index == 1
                          ? 'There are many merchants that have been registered and the quality is guaranteed'
                          : 'There are many types of goods for rent at low prices',
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Color(0xFF88C800),
              dotColor: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 20),
          _buildButtons(context),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: 44,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF88C800), width: 2),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(color: Color(0xFF88C800)),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: width,
            height: 44,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF88C800),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String subtitle) {
    return Column(
      children: [
        SizedBox(height: 40),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
