import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyClone/Screens/signinoptions/Signin.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
            child: SizedBox(
          height: 400.0,
          width: 400.0,
          child: Image.asset(
            'images/landingPageBg.png',
            fit: BoxFit.fitHeight,
            colorBlendMode: BlendMode.darken,
            color: Colors.black54,
          ),
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
                onPressed: () {
                  print('Pressed');
                },
                child: Text('Browse',
                    style: TextStyle(
                        color: Colors.grey.shade300, fontSize: 20.0))),
            MaterialButton(
                onPressed: () {
                 Navigator.pushReplacement(context, PageTransition(
                   child: SignIn(),type: PageTransitionType.bottomToTop
                 ));
                },
                child: Text('Sign in',
                    style:
                        TextStyle(color: Colors.grey.shade300, fontSize: 20.0)))
          ],
        ),
      ),
    );
  }
}
