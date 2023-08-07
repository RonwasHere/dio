import 'package:flutter/material.dart';
import 'package:dio/theme/theme_file.dart';

class ContainerMember extends StatelessWidget {
  String member;
  String title;
  String point;
  String subtitle;
  ContainerMember({
    required this.member,
    required this.title,
    required this.point,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: (Colors.brown[200])!,
          width: 2,
        ),
        color: kWhiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              member,
              style: TextStyle(
                fontSize: 20,
                color: kBrownColor,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: kBrownColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              point,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kBrownColor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: kBrownColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
