import 'package:flutter/material.dart';
import 'package:dio/theme/theme_file.dart';

class ContainerProfileMember extends StatelessWidget {
  String name;
  String phone;
  String email;
  String joindate;
  ContainerProfileMember({
    required this.name,
    required this.phone,
    required this.email,
    required this.joindate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kGreyColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(color: kDarkGreyColor, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              'phone = ' + phone,
              style: TextStyle(color: kDarkGreyColor, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              email,
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Join Date = ' + joindate,
              style: TextStyle(color: kDarkGreyColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
