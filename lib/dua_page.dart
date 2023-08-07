import 'package:dio/theme/theme_file.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DuaPage extends StatefulWidget {
  const DuaPage({super.key});

  @override
  State<DuaPage> createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  int _current = 0;
  // final CarouselController _controller = CarouselController();
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'assets/coffee.PNG',
    'assets/carousel3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: (Colors.brown[200])!,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: imgList
                          .map((item) => Container(
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
                                        height:
                                            MediaQuery.of(context).size.height,
                                      ),
                                      //pembatas
                                      Positioned(
                                        top: 350,
                                        left: 200,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: imgList
                                              .asMap()
                                              .entries
                                              .map((entry) {
                                            return GestureDetector(
                                              onTap: () => _controller
                                                  .animateToPage(entry.key),
                                              child: Container(
                                                width: 20.0,
                                                height: 6.0,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 8.0,
                                                    horizontal: 4.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    // shape: BoxShape.rectangle,
                                                    color: (Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? Colors.white
                                                            : kDarkGreyColor)
                                                        .withOpacity(_current ==
                                                                entry.key
                                                            ? 0.9
                                                            : 0.4)),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                      options: CarouselOptions(
                          height: 400,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          onPageChanged: (index, CarouselPageChangedReason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    SizedBox(height: 10),
                    //text untuk kata kata dibawah carousel
                    Text(
                      'Dapatkan Hadiah langsung dengan submit kode unik!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kBrownColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Masukkan kode unik yang tertera pada kemasan dan menangkan \nhadiah langsung Pulsa, Logam Mulia hingga Iphone 14',
                      style: TextStyle(
                        fontSize: 15,
                        color: kBrownColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 30),
              //Column untuk kode unik
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: kBrownColor,
                        width: 3,
                      ),
                    ),
                    //untuk nomer kode untik
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '2307',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '2603',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '1728',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '2088',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  //button
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kBrownColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/tiga');
                      },
                      child: Text(
                        'Kirim ',
                        style: TextStyle(
                          fontSize: 20,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kWhiteColor, //untuk warna background body aplikasi
    );
  }

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
