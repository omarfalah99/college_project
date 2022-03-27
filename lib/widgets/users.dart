import 'package:flutter/material.dart';
import 'package:untitled2/screen/user_detail_screen.dart';

class Users extends StatelessWidget {
  String name;
  String work;
  String phone;
  String id;

  Users(this.name, this.work, this.phone, this.id);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(UserDetails.routeName, arguments: id);
      },
      borderRadius: BorderRadius.circular(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 130,
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: Image.asset(
                  'assets/small.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                phone,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ),
              Text(
                work,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
