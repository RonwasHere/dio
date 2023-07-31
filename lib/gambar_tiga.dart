import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

//https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80
class GambarTiga extends StatefulWidget {
  GambarTiga({super.key, required this.url});
  String url;

//https://stackoverflow.com/questions/49455079/flutter-save-a-network-image-to-local-directory
  @override
  State<GambarTiga> createState() => _GambarTigaState();
}

class _GambarTigaState extends State<GambarTiga> {
  late String filename;
  var dataBytes;

//   _LoadImages(this.url){
//  filename = Uri.parse(url).pathSegments.last;
//  downloadImage().then((bytes){
//   setState(() {
//     dataBytes = bytes;
//   });
// });
// }

  // Future<dynamic> downloadImage() async {
  // String dir = (await getApplicationDocumentsDirectory()).path;
  // File file = new File('$dir/$filename');

  // if (file.existsSync()) {
  //   print('file already exist');
  //   var image = await file.readAsBytes();
  //   return image;
  // } else {
  //   print('file not found downloading from server');
  //   var request = await http.get(Uri.parse(url));
  //   var bytes = await request.bodyBytes;//close();
  //   await file.writeAsBytes(bytes);
  //   print(file.path);
  //   return bytes;
  // }
  // }

  @override
  Widget build(BuildContext context) {
    if (dataBytes != null) {
      return Image.memory(dataBytes);
    } else {
      return new CircularProgressIndicator();
    }
  }
}
