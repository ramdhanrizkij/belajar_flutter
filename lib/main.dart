import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/pages/login_screen.dart';
import 'package:pertemuan2/pages/profile_page.dart';
import 'package:pertemuan2/pages/signup_page.dart';
import 'package:pertemuan2/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login':(context) => const LoginPage(),
        '/profile':(context)=> const ProfilePage(),
        '/signup':(context)=> const SignupPage()
      },
    );
  }
}
