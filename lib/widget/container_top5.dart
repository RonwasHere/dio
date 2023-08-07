import 'package:flutter/material.dart';
import 'package:dio/theme/theme_file.dart';

class ContainerTop5 extends StatelessWidget {
  // String title;
  // String subtitle;
  // String link;
  // ContainerTop5({
  //   required this.title,
  //   required this.subtitle,
  //   required this.link,
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: (Colors.brown[200])!,
          width: 2,
        ),
        color: Color(0xfffff8e8),
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'TOP 5 BULAN JULI 2023',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kBrownColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Data Terakir Terupdate Pada',
              style: TextStyle(
                fontSize: 15,
                color: kBrownColor,
              ),
            ),
            Text(
              'Dapatkan 10 poin untuk setiap kode unik terdaftar dan menangkan',
              style: TextStyle(
                fontSize: 15,
                color: kBrownColor,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'hadiah e-wallet @ rp 2.000.000 TOP 5 setiap bulannya',
              style: TextStyle(
                fontSize: 15,
                color: kBrownColor,
              ),
            ),
            Text(
              'Belum ada TOP 5',
              style: TextStyle(
                fontSize: 15,
                color: kBrownColor,
              ),
            ),
            Text(
              '*Leader Board ini Bersifat Sementara dan Belum Final',
              style: TextStyle(fontSize: 15, color: kBrownColor),
            ),
            SizedBox(height: 15),
            Text(
              'Lihat Semua',
              style: TextStyle(
                color: Color(0xffd89e7a),
                fontSize: 15,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Color(0xffd89e7a),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
