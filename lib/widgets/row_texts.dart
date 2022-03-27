import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  String text1;
  String text2;

  RowText(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              text1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
        Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              text2,
              style: TextStyle(
                fontSize: 12,
              ),
            )),
      ],
    );
  }
}
