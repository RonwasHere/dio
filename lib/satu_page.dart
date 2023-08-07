import 'package:dio/theme/theme_file.dart';
import 'package:dio/widget/container_member.dart';
import 'package:dio/widget/container_top5.dart';
import 'package:dio/widget/container_voucher.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SatuPage extends StatefulWidget {
  const SatuPage({super.key});

  @override
  State<SatuPage> createState() => _SatuPageState();
}

class _SatuPageState extends State<SatuPage> {
  bool _customIcon = false;
  bool _customText = false;
  bool _customText1 = false;
  bool _customText2 = false;
  bool _customcolortile = false;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'assets/carousel1.jpg',
    'assets/carousel2.jpg',
    // 'assets/coffee.PNG',
    // 'assets/coffee.PNG',
    // 'assets/coffee.PNG',
    // 'assets/coffee.PNG',
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
                                  //pembatas
                                  Positioned(
                                    top: 210,
                                    left: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children:
                                          imgList.asMap().entries.map((entry) {
                                        return GestureDetector(
                                          onTap: () => _controller
                                              .animateToPage(entry.key),
                                          child: Container(
                                            width: 20.0,
                                            height: 6.0,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 4.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                // shape: BoxShape.rectangle,
                                                color: (Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : kDarkGreyColor)
                                                    .withOpacity(
                                                        _current == entry.key
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
              //batas akir carousel
              SizedBox(height: 10),
              //Container untuk poin + 4 kata-kata
              ContainerMember(
                //file ada di folder container_member
                member: 'member@gmail.com',
                title: 'Total Akumulasi Point Anda',
                point: '4 Point',
                subtitle: 'Total Point dari 1 Juli - saat ini',
              ),
              SizedBox(height: 10),
              //button submit, kode ada di bawah
              button_submit(context),
              SizedBox(height: 10),
              //Container untuk kata kata TOP 5 BULAN JULI 2023
              //code ada di folder container_top5
              ContainerTop5(),
              SizedBox(height: 10),
              //container bagian "Voucher Saya"
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: (Colors.brown[200])!,
                    width: 2,
                  ),
                  // container jgn dikasik warna... nantik bug buat chldren yg bawah
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(
                        'Voucher Saya',
                        style: TextStyle(color: kBrownColor),
                      ),
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    //bagian voucher dan children containernnya
                    ListTileTheme(
                      // selectedTileColor: kOrangeColor,
                      // selectedColor: kOrangeColor,
                      tileColor: _customcolortile ? kOrangeColor : kWhiteColor,
                      child: ExpansionTile(
                        collapsedBackgroundColor: kWhiteColor, //posisi awal
                        collapsedIconColor: kBlackColor,
                        title: Text(
                          'SUPRESSO',
                          style: TextStyle(
                              color:
                                  _customText ? kDarkGreyColor : kBlackColor),
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
                            _customcolortile = expanded;
                          });
                        },
                      ),
                    ),
                    //listtiletheme2
                    ListTileTheme2(),
                    ListTileTheme3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: kWhiteColor, //untuk warna background
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
          style: TextStyle(color: _customText2 ? kDarkGreyColor : kBlackColor),
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
              subtitle: 'Tukarkan dengan 10 point'),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
            _customText2 = expanded;
          });
        },
      ),
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
          style: TextStyle(color: _customText1 ? kDarkGreyColor : kBlackColor),
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
              subtitle: 'Tukarkan dengan 10 point'),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
            _customText1 = expanded;
          });
        },
      ),
    );
  }

  Container button_submit(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kBrownColor,
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
    );
  }
}
