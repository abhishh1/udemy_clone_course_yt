import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:udemyClone/Screens/MyList.dart';
import 'package:udemyClone/Services/DataController.dart';

class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('images/sale1.png'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 80.0,
                  width: 400.0,
                  color: Colors.blueAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Courses now on sale',
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.0)),
                      Text('1 Day Left',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold))
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Featured',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 300.0,
              width: 400.0,
              child: GetBuilder<DataController>(
                init: DataController(),
                builder: (value) {
                  return FutureBuilder(
                    future: value.getData('featured'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                            child: CircularProgressIndicator(
                                backgroundColor: Colors.black));
                      } else {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100.0,
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              image: NetworkImage(snapshot
                                                  .data[index]
                                                  .data()['image']))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        constraints:
                                            BoxConstraints(maxWidth: 220.0),
                                        child: Text(
                                          snapshot.data[index].data()['title'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        snapshot.data[index].data()['author'],
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            snapshot.data[index]
                                                .data()['ratings'],
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            ('(${snapshot.data[index].data()['enrolled']})'),
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        children: [
                                          Icon(FontAwesomeIcons.rupeeSign,
                                              color: Colors.white),
                                          Text(
                                            snapshot.data[index]
                                                .data()['price'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.yellow,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Bestseller',
                                              style: TextStyle(
                                                  color: Colors.brown,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Top Courses in development',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 300.0,
              width: 400.0,
              child: GetBuilder<DataController>(
                init: DataController(),
                builder: (value) {
                  return FutureBuilder(
                    future: value.getData('top'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                            child: CircularProgressIndicator(
                                backgroundColor: Colors.black));
                      } else {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100.0,
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              image: NetworkImage(snapshot
                                                  .data[index]
                                                  .data()['image']))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        constraints:
                                            BoxConstraints(maxWidth: 240.0),
                                        child: Text(
                                          snapshot.data[index].data()['title'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        snapshot.data[index].data()['author'],
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Icon(EvaIcons.star,
                                            color: Colors.yellowAccent),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            snapshot.data[index]
                                                .data()['ratings'],
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            ('(${snapshot.data[index].data()['enrolled']})'),
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                        children: [
                                          Icon(FontAwesomeIcons.rupeeSign,
                                              color: Colors.white),
                                          Text(
                                            snapshot.data[index]
                                                .data()['price'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline),
            onPressed: () {
              Get.to(MyList());
            },
          )
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
