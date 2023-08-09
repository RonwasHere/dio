// Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(
//                 color: (Colors.brown[200])!,
//                 width: 2,
//               ),
//             ),
//             child: Column(
//               children: [
//                 //carousel image
//                 CarouselSlider(
//                   items: imgList
//                       .map((item) => Container(
//                             child: Container(
//                               margin: EdgeInsets.all(5.0),
//                               child: ClipRRect(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(5.0)),
//                                 child: Stack(
//                                   children: <Widget>[
//                                     //Image untuk carousel
//                                     Image.network(item,
//                                         fit: BoxFit.cover, width: 1000.0),
//                                     Positioned(
//                                       bottom: 0.0,
//                                       left: 0.0,
//                                       right: 0.0,
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           gradient: LinearGradient(
//                                             colors: [
//                                               Color.fromARGB(200, 0, 0, 0),
//                                               Color.fromARGB(0, 0, 0, 0)
//                                             ],
//                                             begin: Alignment.bottomCenter,
//                                             end: Alignment.topCenter,
//                                           ),
//                                         ),
//                                         padding: EdgeInsets.symmetric(
//                                             vertical: 10.0, horizontal: 20.0),
//                                         //untuk keterangan di atas gambar carousel
//                                         child: Text(
//                                           'No. ${imgList.indexOf(item)} image',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20.0,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ))
//                       .toList(),
//                   options: CarouselOptions(
//                       autoPlay: false,
//                       aspectRatio: 16 / 9,
//                       viewportFraction: 1,
//                       onPageChanged: (index, CarouselPageChangedReason) {
//                         setState(() {
//                           _current = index;
//                         });
//                       }),
//                 ),
//                 //keterangan dapatkan hadiah
//                 Text(
//                   'Dapatkan hadiah langsung dengan submit kode unik!',
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 Text(
//                   'Masukkan kode unik yang tertera pada kemasan dan menangkan \nhadiah langsung Pulsa, Logam Mulia hingga Iphone 14',
//                   style: TextStyle(fontSize: 15),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 30),                
//               ],
//             ),
//           ),
//=============================================================================================
//======================== EXPANSION TILE================================
// ExpansionTile(
//               backgroundColor: kOrangeColor,
//               collapsedBackgroundColor: kWhiteColor,
//               collapsedIconColor: kBlackColor,
//               // collapsedBackgroundColor: _customExpansionTile
//               //     ? kBlackColor
//               //     : kWhiteColor, //ini posisi awal ketika apps dibuka
//               title: Text(
//                 'Supresso',
//                 style:
//                     TextStyle(color: _customText ? kWhiteColor : kBlackColor),
//               ),
//               trailing: Icon(
//                 _customIcon
//                     ? Icons.keyboard_arrow_up
//                     : Icons.keyboard_arrow_down,
//               ),
//               //CUSTOM CONTAINER U/ DISKON, KETERANGAN + TOMBOL CLAIM
//               children: [
//                 Container(
//                   margin:
//                       EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
//                   height: 200,
//                   color: kBrownColor,
//                 )
//               ],
//               onExpansionChanged: (bool expanded) {
//                 setState(() {
//                   _customIcon = expanded;
//                   _customText = expanded;
//                   // _customExpansionTile = expanded;
//                 });
//               },
//             ),








                    //   child: Padding(
                    //     padding: const EdgeInsets.all(10.0),
                    //     child: Column(
                    //       children: [
                    //         Container(
                    //           width: MediaQuery.of(context).size.width,
                    //           height: 200,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             border: Border.all(
                    //               color: kGreyColor,
                    //               width: 2,
                    //             ),
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             child: Column(
                    //               children: [
                    //                 Text(
                    //                   'TOP 5 BULAN AGUSTUS 2023',
                    //                   style: TextStyle(
                    //                     fontSize: 20,
                    //                     color: kBlackColor,
                    //                     fontWeight: FontWeight.bold,
                    //                   ),
                    //                 ),
                    //                 SizedBox(height: 10),
                    //                 Text(
                    //                   'Data Terakir Terupdate',
                    //                   style: TextStyle(
                    //                       fontSize: 15, color: kBlackColor),
                    //                 ),
                    //                 Text(
                    //                   'Dapatkan 10 point untuk setiap kode unik terdaftar dan \nmenangkan hadiah e-wallet @Rp. 2000.000, TOP 5 setiap bulan nya',
                    //                   style: TextStyle(
                    //                       fontSize: 15, color: kBlackColor),
                    //                 ),
                    //                 // Text('@Rp. 2000.000, TOP 5 setiap bulan nya'),
                    //                 Text(
                    //                   'Belum ada TOP 5',
                    //                   style: TextStyle(
                    //                       fontSize: 15, color: kBlackColor),
                    //                 ),
                    //                 SizedBox(height: 30),
                    //                 Text(
                    //                   '*Leader Board ini bersifat sementara dan belum final',
                    //                   style: TextStyle(
                    //                       fontSize: 15, color: kBlackColor),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),