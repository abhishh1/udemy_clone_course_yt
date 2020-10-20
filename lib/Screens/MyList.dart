import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemyClone/Services/DataController.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  DataController dataController = Get.put(DataController());
  bool defa = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My List',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
