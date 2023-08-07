import 'package:dio/theme/theme_file.dart';
import 'package:flutter/material.dart';

class TigaPage extends StatelessWidget {
  const TigaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'assets/coffee.PNG',
                height: 300,
                // width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 20),
              //text form field email
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //text form field password
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //button Sign in
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
                    Navigator.pushNamed(context, '/mainscreen');
                  },
                  child: Text(
                    'Sign In ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              //copyright watermark
              Text(
                '2023 INDRACO All right reserved',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade400,
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
