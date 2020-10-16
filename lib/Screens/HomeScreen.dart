import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:udemyClone/Screens/Homescreens/Account.dart';
import 'package:udemyClone/Screens/Homescreens/Featured.dart';
import 'package:udemyClone/Screens/Homescreens/MyCourses.dart';
import 'package:udemyClone/Screens/Homescreens/Search.dart';
import 'package:udemyClone/Screens/Homescreens/Wishlist.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PageController pageController = new PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController,
        children: [Featured(), Search(), MyCourses(), Wishlist(), Account()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(color: Colors.redAccent),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        iconSize: 26.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Featured')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_video), title: Text('My Courses')),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.heartOutline), title: Text('Wishlist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Account'))
        ],
      ),
    );
  }
}
