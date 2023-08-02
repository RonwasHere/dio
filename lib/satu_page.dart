import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SatuPage extends StatefulWidget {
  const SatuPage({super.key});

  @override
  State<SatuPage> createState() => _SatuPageState();
}

class _SatuPageState extends State<SatuPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    // AssetImage('assets/capture.png'),
    // 'assets/capture.png'
    'assets/coffee.PNG',
    'assets/coffee.PNG',
    'assets/coffee.PNG',
    'assets/coffee.PNG',
    'assets/coffee.PNG',
    // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CarouselSlider(
                items: imgList
                    .map((item) => Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  //Image untuk carousel
                                  Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    width: 1000.0,
                                    height: MediaQuery.of(context).size.height,
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      //untuk keterangan di atas gambar carousel
                                      child: Text(
                                        'No. ${imgList.indexOf(item)} image',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    onPageChanged: (index, CarouselPageChangedReason) {
                      setState(() {
                        _current = index;
                        print(index);
                      });
                    }),
              ),
              //unutk indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              //batas akir carousel
              SizedBox(height: 10),
              //Container untuk poin + 4 kata-kata
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: (Colors.brown[200])!,
                    width: 2,
                  ),
                  color: Color(0xfffff8e8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Member@gmail.com',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff70421e)),
                      ),
                      Text(
                        'Total Akumulasi Poin Anda',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff70421e)),
                      ),
                      Text(
                        '4 POIN',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff70421e)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Total Poin Dari 1 Juli - Saat Ini',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff70421e)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              //button
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff70421e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dua');
                  },
                  child: Text(
                    'Submit Kode Unik',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //Container untuk kata kata TOP 5 BULAN JULI 2023
              Container(
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
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'TOP 5 BULAN JULI 2023',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff70421e),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Data Terakir Terupdate Pada',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff70421e)),
                      ),
                      Text(
                        'Dapatkan 10 poin untuk setiap kode unik terdaftar dan menangkan',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff70421e)),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'hadiah e-wallet @ rp 2.000.000 TOP 5 setiap bulannya',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff70421e)),
                      ),
                      Text(
                        'Belum ada TOP 5',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff70421e)),
                      ),
                      Text(
                        '*Leader Board ini Bersifat Sementara dan Belum Final',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff70421e)),
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
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Color(0xfffdf8ea), //untuk warna background
    );
  }
}
