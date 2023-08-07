import 'package:dio/theme/theme_file.dart';
import 'package:dio/widget/container_voucher.dart';
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

//======
class EnamPage extends StatefulWidget {
  const EnamPage({super.key});

  @override
  State<EnamPage> createState() => _EnamPageState();
}

class _EnamPageState extends State<EnamPage> {
  bool _customIcon = false;
  bool _customText = false;
  bool _customText1 = false;
  bool _customText2 = false;

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
                  'SUPRESSO',
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
                  SizedBox(height: 10),
                  ContainerVoucher(
                      //method ada di folder widget
                      number: '1',
                      title: 'Diskon 10% (DISC 10%)',
                      subtitle: 'Tukarkan dengan 10 point'),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _customIcon = expanded;
                    _customText = expanded;
                  });
                },
              ),
            ),
            ListTileTheme2(),
            ListTileTheme3(),
            //ListView Tulisan SUPRESSO
          ],
        ),
      ),

      backgroundColor: kGreyColor,
    );
  }

  ListTileTheme ListTileTheme2() {
    return ListTileTheme(
      tileColor: kOrangeColor,
      child: ExpansionTile(
        collapsedBackgroundColor: kWhiteColor,
        collapsedIconColor: kBlackColor,
        title: Text(
          'PANDAN GARDEN',
          style: TextStyle(color: _customText1 ? kWhiteColor : kBlackColor),
        ),
        trailing: Icon(
          _customIcon ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        ),
        //CUSTOM CONTAINER U/ DISKON, KETERANGAN + TOMBOL CLAIM
        children: [
          SizedBox(height: 10),
          ContainerVoucher(
            //method ada di folder widget
            number: '1',
            title: 'Diskon 20% (DISC 20%)',
            subtitle: 'Tukarkan dengan 20 point',
          ),
          SizedBox(height: 5),
          ContainerVoucher(
              //method ada di folder widget
              number: '2',
              title: 'Cashback Rp.15000 (DISC Rp 15.000)',
              subtitle: 'Tukarkan dengan 5 point'),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
            _customText1 = expanded;
            // _customExpansionTile = expanded;
          });
        },
      ),
    );
  }

  ListTileTheme ListTileTheme3() {
    return ListTileTheme(
      tileColor: kOrangeColor,
      child: ExpansionTile(
        collapsedBackgroundColor: kWhiteColor,
        collapsedIconColor: kBlackColor,
        title: Text(
          'INDRACO STORE',
          style: TextStyle(color: _customText2 ? kWhiteColor : kBlackColor),
        ),
        trailing: Icon(
          _customIcon ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        ),
        //CUSTOM CONTAINER U/ DISKON, KETERANGAN + TOMBOL CLAIM
        children: [
          SizedBox(height: 10),
          ContainerVoucher(
            //method ada di folder widget
            number: '1',
            title: 'Diskon 10% (DISC 10%)',
            subtitle: 'Tukarkan dengan 10 point',
          ),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
            _customText2 = expanded;
            // _customExpansionTile = expanded;
          });
        },
      ),
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
