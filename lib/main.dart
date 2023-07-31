import 'package:dio/awal.dart';
import 'package:dio/dua_page.dart';
import 'package:dio/gambar.dart';
import 'package:dio/gambar_dua.dart';
import 'package:dio/gambar_empat.dart';
import 'package:dio/gambar_tiga.dart';
import 'package:dio/satu_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => AwalPage(),
          '/gambar': (context) => GambarPage(),
          // '/gambardua' : (context) => GambarDua(),
          // '/gambartiga': (context) => GambarTiga(
          //     url:
          //         'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
          '/gambarempat': (context) => GambarEmpat(),
          '/satu': (context) => SatuPage(),
          '/dua': (context) => DuaPage(),
        },
      ),
    );
  }
}
