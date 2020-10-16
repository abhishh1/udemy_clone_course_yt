import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyClone/Screens/landingPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: LandingPage(),
                type: PageTransitionType.rightToLeftWithFade)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300.0,
                child: Image.asset('images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
