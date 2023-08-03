import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';

//HALAMAN NOTIFIKASI
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 16,
                  itemBuilder: (context, index) => ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: kGreyColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: kWhiteColor,
                    leading: Text(
                      '$index',
                      style: TextStyle(fontSize: 20),
                    ),
                    title: Text(
                      'Notifikasi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Content For List Item'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: kWhiteColor,
    );
  }
}
