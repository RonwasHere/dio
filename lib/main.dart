import 'package:dio/main/main_screen.dart';
import 'package:dio/pages/dua_page.dart';
import 'package:dio/pages/empat_page.dart';
import 'package:dio/pages/enam_page.dart';
import 'package:dio/pages/lima_page.dart';
import 'package:dio/pages/satu_page.dart';
import 'package:dio/pages/tiga_page.dart';

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
          '/': (context) => TigaPage(), //untuk ke main
          // '/': (context) => AwalPage(), unccoment ini untuk kesemua akses
          // '/gambar': (context) => GambarPage(),
          // '/gambarempat': (context) => GambarEmpat(),
          '/satu': (context) => SatuPage(), // DASBOARD
          '/dua': (context) => DuaPage(), //KODE UNIK
          '/tiga': (context) => TigaPage(), //LOGIN
          '/empat': (context) => EmpatPage(), //PROFIL / AKUN
          '/mainscreen': (context) =>
              MainScreen(), //buat bottom navbar di klik bisa pindah hlmn
          '/lima': (context) => LimaPage(), //hlmn notifikasi
          '/enam': (context) => EnamPage(), //hlmn notifikasi
        },
      ),
    );
  }
}
