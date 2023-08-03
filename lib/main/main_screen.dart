import 'package:dio/dua_page.dart';
import 'package:dio/empat_page.dart';
import 'package:dio/lima_page.dart';
import 'package:dio/satu_page.dart';
import 'package:dio/theme.dart/theme_file.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pageList = [
    // TigaPage(),
    // LimaPage(), //hlmn available vouche
    SatuPage(), //hlmn ddashboard
    DuaPage(), //sementara diisi agak biasa diklik bottom navbar
    LimaPage(), //hlmn NOTIFIKASI
    EmpatPage(), 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: kWhiteColor,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), //HOME DASHBOARD POINT //SATU.DART
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num), //HLMN VOUCHER
            label: "Tukar Poin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), //HLMN NOTIF // LIMA.DART
            label: "Voucher",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), //HLMN PROFIL  
            label: "Akun",
          ),
        ],
      ),
    );
  }
}
