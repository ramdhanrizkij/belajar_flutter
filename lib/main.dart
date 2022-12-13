import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';
import 'package:happy_store/pages/login_screen.dart';
import 'package:happy_store/pages/profile_page.dart';
import 'package:happy_store/pages/signup_page.dart';
import 'package:happy_store/pages/splash_screen.dart';

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
        '/signup':(context)=> const SignupPage(),
      },
    );
  }
}
