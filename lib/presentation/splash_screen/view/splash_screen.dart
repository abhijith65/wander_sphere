import 'dart:async';
import 'package:flutter/material.dart';

import '../../intro_screen/view/intro_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {  Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => IntroScreen()));});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text('Wander Sphere')),
    );
  }
}