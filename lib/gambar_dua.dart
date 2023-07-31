// import 'package:dio/helper/save_file.dart';
// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
//https://stackoverflow.com/questions/49455079/flutter-save-a-network-image-to-local-directory

// class GambarDua extends StatefulWidget {
//   const GambarDua({super.key});

//   @override
//   State<GambarDua> createState() => _GambarDuaState();
// }

// class _GambarDuaState extends State<GambarDua> {
//   Future<Null> _launched;
//   Widget _showResult(BuildContext context, AsyncSnapshot<Null> snapshot) {
//     if (!snapshot.hasError) {
//       return Text('Image is saved');
//     } else {
//       return const Text('Unable to save image');
//     }
//   }

//   Future<Null> _saveNetworkImage(String url) async {
//     try {
//       await SaveFile().saveImage(url);
//     } on Error catch (e) {
//       throw 'Error has occured while saving';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text('Image'),
//       ),
//       body: Column(
//         children: [
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   _launched = _saveNetworkImage(url);
//                 });
//               },
//               icon: Icon(Icons.save)),
//           FutureBuilder<Null>(future: _launched, builder: _showResult)
//         ],
//       ),
//     );
//   }
// }
