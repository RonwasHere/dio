import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';

//HLMN VOUCHER

//kode untuk expansion widget (voucher)
// class Item {
//   Item({
//     required this.header,
//     required this.body,
//     this.isExpanded = false,
//   });
//   final String header;
//   final String body;
//   bool isExpanded;
// }

class EnamPage extends StatefulWidget {
  const EnamPage({super.key});

  @override
  State<EnamPage> createState() => _EnamPageState();
}

class _EnamPageState extends State<EnamPage> {
  bool _customIcon = false;

  //untuk expansion
  // static const loremipsum =
  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua';
  // final List<Item> items = [
  //   Item(header: 'Panel 1', body: loremipsum),
  //   Item(header: 'Panel 2', body: loremipsum),
  //   Item(header: 'Panel 3', body: loremipsum),
  //   Item(header: 'Panel 4', body: loremipsum),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context), //method app bar ada dibawah
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile( 
              title: Text('Expansion Tile'),
              trailing: Icon(
                _customIcon ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              ),
              children: [
                ListTile(
                  title: Text('This is tile number 2'),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _customIcon = expanded;
                });
              },
            ),
          ],
        ),
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
