import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:uber/ubscreen1.dart';

// void main() {
//   runApp(Splash_uber());
// }

class Splash_uber extends StatelessWidget {
  const Splash_uber({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Splash Uber', 
      // home: SplashScreen_uber(),
    );
  }
}

class SplashScreen_uber extends StatefulWidget {
  const SplashScreen_uber({super.key});

  @override
  State<SplashScreen_uber> createState() => _SplashScreen_uberState();
}

class _SplashScreen_uberState extends State<SplashScreen_uber> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Ubsc1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Center(
              child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Uber',
                textStyle: TextStyle(
                    color: Colors.white, fontSize: 23, fontFamily: 'UberMed'),
                   
              ),
            ],
          ))),
    );
  }
}
