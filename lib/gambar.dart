import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class GambarPage extends StatefulWidget {
  const GambarPage({super.key});

  @override
  State<GambarPage> createState() => _GambarPageState();
}

class _GambarPageState extends State<GambarPage> {
  String url =
      'https://cdn.pixabay.com/photo/2022/08/18/20/18/red-maple-leaves-7395624_960_720.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'pick gambar',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.redAccent[600],
            //   width: 200,
            //   height: 500,
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     color: Colors.green[400],
            //   ),
            //   // width: MediaQuery.of(context).size.width,
            //   // height: MediaQuery.of(context).size.height / 2,
            // ),
            //Display the network image
            Image.network(url),
            SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () async {
                //save image to file
                var respon = await http.get(Uri.parse(url));
                Directory? externalStorageDirectory =
                    await getExternalStorageDirectory();
                File file = File(path.join(
                    externalStorageDirectory!.path, path.basename(url)));
                await file.writeAsBytes(respon.bodyBytes);
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Text('Image saved succesfully'),
                          content: Image.file(file),
                        ));
              },
              child: Text(
                'save image',
                style: TextStyle(color: Colors.yellow, fontSize: 25),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                _showDialog();
              },
              child: Text(
                'klik untuk munculkan alert dialog',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //https://medium.com/@nikhil725051/just-four-simple-steps-to-save-images-to-local-storage-flutter-89c93d76ad0c
  //https://medium.com/@nikhil725051/need-to-pick-image-from-the-gallery-implement-it-easily-with-this-flutter-plugin-39fa11e13c0f
  Future<void> _showDialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange[600],
            title: Text(
              'Ambil Gambar',
              style: TextStyle(fontSize: 30),
            ),
            content: Text(
              'Ambil gambar lewat CAMERA / GALLERY',
              style: TextStyle(fontSize: 30),
            ),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'CAMERA',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'GALLERY',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          );
        });
  }
}
