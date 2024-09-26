import 'package:flutter/material.dart';
import 'package:wander_sphere/presentation/splash_screen/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
         scrolledUnderElevation: 50,//color: Colors.orange,
          shadowColor: Colors.orangeAccent.withOpacity(.5)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow,),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
