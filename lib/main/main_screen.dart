import 'package:dio/dua_page.dart';
import 'package:dio/empat_page.dart';
import 'package:dio/lima_page.dart';
import 'package:dio/satu_page.dart';
import 'package:dio/theme.dart/theme_file.dart';
import 'package:dio/tiga_page.dart';
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
    SatuPage(),
    LimaPage(), //hlmn available voucher
    DuaPage(),
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
            icon: Icon(Icons.home),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: "Tukar Poin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: "Voucher",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
          ),
        ],
      ),
    );
  }
}
