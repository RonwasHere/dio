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