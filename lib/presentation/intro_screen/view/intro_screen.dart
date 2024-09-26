import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wander_sphere/presentation/signup_screen/view/signup_screen.dart';



class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              'Welcome  to WanderSphere',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "Your Travel Guide: Seamlessly Organize and Map Out Your Journeys with us...",
            image: Container(
              // child: Image.asset(
              //   "assets/images/splash_3.jpg",
              //   height: MediaQuery.of(context).size.height,
              //   width: MediaQuery.of(context).size.width,
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Welcome  to WanderSphere',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "Your Personal travel organizer and planner.Start Your travels with us...",
            // image: Image.asset(
            //   "assets/images/splash_one.jpg",
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   fit: BoxFit.cover,
            // ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Quick, Simple and Easy ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "Your Travel Companion: Effortlessly Manage and Plan Your travel with us...",
            // image: Image.asset(
            //   "assets/images/splash_2.jpg",
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   fit: BoxFit.cover,
            // ),
          ),
        ],
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen(),
              ));
        },
        onSkip: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen(),
              ));
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
        ),
        done: const Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}