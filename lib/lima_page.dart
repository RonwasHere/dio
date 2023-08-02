import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';

class LimaPage extends StatefulWidget {
  const LimaPage({super.key});

  @override
  State<LimaPage> createState() => _LimaPageState();
}

class _LimaPageState extends State<LimaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/mainscreen');
          },
          child: Icon(
            Icons.close,
            color: kBlackColor,
          ),
        ),
        backgroundColor: kWhiteColor,
      ),
      backgroundColor: kWhiteColor,
    );
  }
}
