import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyClone/Screens/HomeScreen.dart';
import 'package:udemyClone/Screens/signinoptions/signUp..dart';
import 'package:udemyClone/Services/Authentication.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () async {
                      //Email auth
                      print('Pressed');
                    },
                    icon: Icon(EvaIcons.email),
                    label: Text('Sign in with Email')),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180.0,
                      child: Divider(color: Colors.white),
                    ),
                    Text('or', style: TextStyle(color: Colors.white)),
                    SizedBox(
                      width: 180.0,
                      child: Divider(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, top: 100.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () async {
                      await authentication.googleSignIn().whenComplete(() {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: Homescreen(),
                                type: PageTransitionType.rightToLeftWithFade));
                      });
                    },
                    icon: Icon(EvaIcons.google),
                    label: Text('Sign in with Google')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () {
                      print('Google sign in...');
                    },
                    icon: Icon(EvaIcons.facebook),
                    label: Text('Sign in with Facebook')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () {
                      print('Google sign in...');
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text('Sign in with Apple')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      'New here?',
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: SignUp(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Text(
                        'Create an account',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Terms of Use',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/landingPageBg.png'),
                fit: BoxFit.fitHeight,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}
