import 'package:adela/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: AnimatedSplashScreen(
            // centered: false,
            duration: 3000,
            splash: Stack(
              children: [
                Image.asset(
                  "assets/welcome.gif",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ],
            ),
            nextScreen: homePage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.purple[800]!));
  }
}
