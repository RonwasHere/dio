import 'package:flutter/material.dart';
import 'package:dio/theme/theme_file.dart';
//file ini untuk container yg isinya kode vouceher saja (nomer,diskon 10%,button claim)
//file kepalanya, (expansion tile + tanda panah), ada di enam.dart

class ContainerVoucher extends StatelessWidget {
  String number;
  String title;
  String subtitle;
  ContainerVoucher({
    required this.number,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kWhiteColor, width: 3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                number.toString(),
                style: TextStyle(color: kBlackColor),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subtitle),
              ],
            ),
            Spacer(), //untuk spasi jarak yg kosong sampi mentok
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kDarkGreyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                'CLAIM',
                style: TextStyle(fontSize: 15, color: kWhiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
