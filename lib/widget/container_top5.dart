import 'package:dio/widget/container_leaderboard.dart';
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
            //link tulisan jika diklik bukak modal
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext contex) => Dialog.fullscreen(
                    child: Scaffold(
                      appBar: AppBar(
                        leading: GestureDetector(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .pop('dialog');
                          },
                          child: Icon(
                            Icons.close,
                            color: kBlackColor,
                          ),
                        ),
                        elevation: 0,
                        backgroundColor: kWhiteColor,
                      ),
                      body: bodylinklihatSemua(context), //method ada dibawah
                    ),
                  ),
                );
              },
              child: Text(
                'Lihat Semua',
                style: TextStyle(
                  color: Color(0xffd89e7a),
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Color(0xffd89e7a),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //method untuk isi semua dialog dari
  SingleChildScrollView bodylinklihatSemua(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //biar rata kanan kolomnya
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'TOP 5 BULAN AGUSTUS 2023',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Data Terakir Terupdate',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                    Text(
                      'Dapatkan 10 point untuk setiap kode unik terdaftar dan',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                    Text(
                      'menangkan hadiah e-wallet @Rp. 2000.000,',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                    Text(
                      'untuk TOP 5 setiap bulannya',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Belum ada TOP 5',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '*Leader Board ini bersifat sementara dan belum final',
                      style: TextStyle(fontSize: 15, color: kBlackColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'LEADERBOARD',
              style: TextStyle(
                  fontSize: 25,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //container dibawah tulisan leaderboard
            //ini manggil dari file ContainerLeaderboard
            ContainerLeaderboard(
              email: 'suryoatm@gmail.com',
              point: '2',
            ),
            ContainerLeaderboard(
              email: 'admin@gmail.com',
              point: '3',
            ),
            ContainerLeaderboard(
              email: 'member@gmail.com',
              point: '2',
            ),
            ContainerLeaderboard(
              email: 'sigitwahyu05@gmail.com',
              point: '2',
            ),
          ],
        ),
      ),
    );
  }
}
