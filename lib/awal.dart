import 'package:flutter/material.dart';

class AwalPage extends StatelessWidget {
  const AwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AMBIL-GAMBAR-demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/gambar');
              },
              child: Text(
                'form ke hlmn selanjutnya',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 30),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.black,
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/gambardua');
            //   },
            //   child: Text(
            //     'Gambar dgn beda tutorial',
            //     style: TextStyle(fontSize: 30),
            //   ),
            // )
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gambarempat');
              },
              child: Text(
                'gambar dgn tutorial ke-empat',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/satu');
              },
              child: Text(
                'tampilan kerja tuker poin',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
