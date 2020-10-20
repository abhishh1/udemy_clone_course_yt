import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Wishlist', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(EvaIcons.shoppingCartOutline, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          child:
                              Icon(EvaIcons.shakeOutline, color: Colors.white),
                          radius: 50.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text('Want to save something for later?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text('Your wishlist shall go here',
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Browse categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                ListTile(
                    leading: Icon(EvaIcons.browserOutline,
                        color: Colors.grey.shade500),
                    title: Text('Finance and accounting',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0))),
                ListTile(
                    leading: Icon(EvaIcons.browserOutline,
                        color: Colors.grey.shade500),
                    title: Text('Development',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0))),
                ListTile(
                    leading: Icon(EvaIcons.browserOutline,
                        color: Colors.grey.shade500),
                    title: Text('Business',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0))),
                ListTile(
                    leading: Icon(EvaIcons.browserOutline,
                        color: Colors.grey.shade500),
                    title: Text('IT & Software',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0))),
                ListTile(
                    leading: Icon(EvaIcons.browserOutline,
                        color: Colors.grey.shade500),
                    title: Text('Office Productivity',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0)))
              ],
            ),
          ),
        ));
  }
}
