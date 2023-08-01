import 'package:flutter/material.dart';

class EmpatPage extends StatelessWidget {
  const EmpatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Color(0xfffdf8ea),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(0)),
              //untuk member
              Container(
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    minimumSize: Size.fromHeight(200),
                    side: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Member',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
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
                    backgroundColor: Color(0xffff5002),
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
      backgroundColor: Color(0xfffdf8ea),
    );
  }
}
