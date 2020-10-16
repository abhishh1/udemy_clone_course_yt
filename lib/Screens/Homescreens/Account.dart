import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemyClone/Screens/landingPage.dart';
import 'package:udemyClone/Services/Authentication.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline),
            onPressed: () {
              print('Basket window');
            },
          )
        ],
        backgroundColor: Colors.black,
        title: Text('Account',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.0,
                width: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Abhishek chavhan',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(EvaIcons.google, color: Colors.white),
                          Text(
                            'chavhanabhishek3636@gmail.com',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Become an instructor',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Video preference',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Download Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Video Playback Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Account Settings',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Account Security',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Email Notification Preferences',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Row(
                  children: [
                    Text(
                      'Learning Reminders',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Icon(Icons.new_releases, color: Colors.white)
                  ],
                ),
              ),
              Text(
                'Support',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'About Udemy',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'About Udemy for business',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'FAQs',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Share the udemy app',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Diagonostics',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                title: Text(
                  'Status',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () async {
                    await authentication.googleSignOut().whenComplete(() {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: LandingPage(),
                              type: PageTransitionType.bottomToTop));
                    });
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    'Udemy clone v1.0.0',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
