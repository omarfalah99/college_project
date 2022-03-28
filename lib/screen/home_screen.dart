import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:untitled2/widgets/drawer.dart';
import 'package:untitled2/widgets/row_texts.dart';

import '../model/data.dart';
import '../widgets/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Icon(Icons.location_on),
        centerTitle: true,
        actions: const [
          Icon(Icons.search_outlined),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            child: Image.asset(
              'assets/engineer.jpg',
              fit: BoxFit.cover,
            ),
          ),
          RowText('Feature', 'More'),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Users(WORKER_DATA[index].name, WORKER_DATA[index].work,
                    WORKER_DATA[index].phone, WORKER_DATA[index].id);
              },
              itemCount: WORKER_DATA.length,
            ),
          ),
          RowText('Best', 'More'),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Users(WORKER_DATA[index].name, WORKER_DATA[index].work,
                    WORKER_DATA[index].phone, WORKER_DATA[index].id);
              },
              itemCount: WORKER_DATA.length,
            ),
          ),
          RowText('New', 'More'),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Users(WORKER_DATA[index].name, WORKER_DATA[index].work,
                    WORKER_DATA[index].phone, WORKER_DATA[index].id);
              },
              itemCount: WORKER_DATA.length,
            ),
          ),
        ],
      ),
    );
  }
}
