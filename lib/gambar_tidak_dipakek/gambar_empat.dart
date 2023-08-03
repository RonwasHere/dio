import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class GambarEmpat extends StatefulWidget {
  const GambarEmpat({super.key});

  @override
  State<GambarEmpat> createState() => _GambarEmpatState();
}

class _GambarEmpatState extends State<GambarEmpat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                String url =
                    'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80';
                await GallerySaver.saveImage(url, albumName: 'Flutter');
              },
              child: Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}
