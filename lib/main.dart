import 'package:flutter/material.dart';
import 'package:untitled2/screen/home_screen.dart';
import 'package:untitled2/screen/user_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(),
      routes: {
        UserDetails.routeName: (context) => UserDetails(),
      },
    );
  }
}
