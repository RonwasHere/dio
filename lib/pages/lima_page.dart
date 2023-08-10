import 'package:dio/theme/theme_file.dart';
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
      appBar: _appBar(context), //methid app bar ada dibawh
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

  //app bar
  AppBar _appBar(BuildContext context) {
    return AppBar(
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
    );
  }
}

//untuk ListTile / ListView Builder
//untuk kedepannya jika ambil data dr api
class Notifikasi {
  final String notifikasi;
  final String content;

  const Notifikasi({
    required this.notifikasi,
    required this.content,
  });
}
