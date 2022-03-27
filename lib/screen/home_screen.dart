import 'package:flutter/material.dart';
import 'package:untitled2/widgets/drawer.dart';

import '../model/data.dart';
import '../widgets/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.location_on),
        centerTitle: true,
        actions: const [Icon(Icons.search_outlined)],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Image.asset(
              'assets/engineer.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: Text('Feauture')),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('More')),
            ],
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: Text('Feauture')),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('More')),
            ],
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: Text('Feauture')),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('More')),
            ],
          ),
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
