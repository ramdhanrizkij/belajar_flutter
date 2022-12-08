import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/my_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>{
      Navigator.pushNamed(context, '/login')
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              "assets/i_logo.png",
              width: 179,
              height: 179,
            )),
            SizedBox(height: 10,),
            Text(
              "Happy Store",
              style: GoogleFonts.robotoSlab(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Online Store",
              style: GoogleFonts.robotoSlab(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      );
  }
}