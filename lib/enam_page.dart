import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';

//HLMN VOUCHER

//kode untuk expansion widget (voucher)
// class Item {
//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded = false,
//   });
//   final String headerText;
//   final String expandedText;
//   bool isExpanded;
// }

class EnamPage extends StatefulWidget {
  const EnamPage({super.key});

  @override
  State<EnamPage> createState() => _EnamPageState();
}

class _EnamPageState extends State<EnamPage> {
  bool _customIcon = false;
  bool _customText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context), //method app bar ada dibawah
      body: SingleChildScrollView(
        child: Column(
          children: [
            //ListView Tulisan SUPRESSO
            ListTileTheme(
              tileColor: kOrangeColor,
              child: ExpansionTile(
                collapsedBackgroundColor: kWhiteColor,
                collapsedIconColor: kBlackColor,
                title: Text(
                  'Supresso',
                  style:
                      TextStyle(color: _customText ? kWhiteColor : kBlackColor),
                ),
                trailing: Icon(
                  _customIcon
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                //CUSTOM CONTAINER U/ DISKON, KETERANGAN + TOMBOL CLAIM
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    height: 200,
                    color: kBrownColor,
                  )
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _customIcon = expanded;
                    _customText = expanded;
                    // _customExpansionTile = expanded;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            ListTileTheme(
              tileColor: kOrangeColor,
              child: ExpansionTile(
                collapsedBackgroundColor: kWhiteColor,
                collapsedIconColor: kBlackColor,
                title: Text(
                  'Supresso',
                  style:
                      TextStyle(color: _customText ? kWhiteColor : kBlackColor),
                ),
                trailing: Icon(
                  _customIcon
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
                //CUSTOM CONTAINER U/ DISKON, KETERANGAN + TOMBOL CLAIM
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    height: 200,
                    color: kBrownColor,
                  )
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _customIcon = expanded;
                    _customText = expanded;
                    // _customExpansionTile = expanded;
                  });
                },
              ),
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
