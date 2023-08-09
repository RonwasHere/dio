import 'package:dio/theme/theme_file.dart';
import 'package:dio/widget/container_profile_member.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart';

class EmpatPage extends StatelessWidget {
  const EmpatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(0)),
              //untuk informasi member
              ContainerProfileMember(
                  name: 'ATMSURYO',
                  phone: '082155544888',
                  email: 'Suryoatm@gmail.com',
                  joindate: '2023-05-11 08:37:39'),
              SizedBox(height: 20),
              //untuk informasi probadi
              Container(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size.fromHeight(60),
                    foregroundColor: Colors.grey,
                    side: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Informasi Pribadi',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //Ubah kata sanid
              Container(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    minimumSize: Size.fromHeight(60),
                    side: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Ubah Kata Sandi',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    minimumSize: Size.fromHeight(60),
                    side: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Hapus Akun',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //button
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kOrangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/tiga');
                  },
                  child: Text(
                    'Log Out ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kWhiteColor,
    );
  }

  //method app bar
  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/tiga'); //lempar ke hlmn lgin
        },
        child: Icon(
          Icons.close,
          color: Colors.black,
        ),
      ),
      backgroundColor: kWhiteColor,
    );
  }
}
