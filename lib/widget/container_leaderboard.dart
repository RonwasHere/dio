import 'package:flutter/material.dart';
import 'package:dio/theme/theme_file.dart';

class ContainerLeaderboard extends StatelessWidget {
  String email;
  String point;

  ContainerLeaderboard({
    required this.email,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kGreyColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              email,
              style: TextStyle(fontSize: 19),
            ),
            Text(
              point + ' point',
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
