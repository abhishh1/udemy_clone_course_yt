import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:udemyClone/Services/DataController.dart';

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
        body: GetBuilder<DataController>(
          init: DataController(),
          builder: (value) {
            return new FutureBuilder(
                future: value.getData('wishlist'),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                            backgroundColor: Colors.black));
                  } else {
                    return new ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        height: 70.0,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(snapshot
                                                    .data[index]
                                                    .data()['image']),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(10.0)))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        constraints:
                                            BoxConstraints(maxWidth: 285.0),
                                        child: Text(
                                            snapshot.data[index]
                                                .data()['title'],
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                            snapshot.data[index]
                                                .data()['author'],
                                            style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Icon(
                                              EvaIcons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Text(
                                                snapshot.data[index]
                                                    .data()['ratings'],
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                ('(${snapshot.data[index].data()['enrolled']})'),
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.rupeeSign,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            Text(
                                              snapshot.data[index]
                                                  .data()['price'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Text(
                                                snapshot.data[index]
                                                    .data()['notPrice'],
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey.shade600,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                });
          },
        )

        /*SingleChildScrollView(
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
        )*/
        );
  }
}
