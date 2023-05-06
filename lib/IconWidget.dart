import 'package:flutter/material.dart';

class SexWidget extends StatelessWidget {
  SexWidget(this.sexIcon, this.gender);
  final IconData sexIcon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          sexIcon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 18, color: Color(0XFF8D8E98)),
        )
      ],
    );
  }
}
