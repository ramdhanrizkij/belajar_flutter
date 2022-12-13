import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';
import 'package:happy_store/helper/my_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Login",
                style: MyStyle.titleText,
              ),
              Text(
                "Login untuk melanjutkan",
                style: MyStyle.subTitleText,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Alamat Email",
                style: MyStyle.labelFormText,
              ),
              // SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.gray),
                child: Row(children: [
                  Image.asset(
                    "assets/i_email.png",
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: MyColor.secondaryTextColor),
                      decoration: InputDecoration.collapsed(
                          hintText: 'Masukkan Email Anda',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                  ),
                ]),
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: MyStyle.labelFormText,
              ),
              // SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.gray),
                child: Row(children: [
                  Image.asset(
                    "assets/i_password.png",
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: MyColor.secondaryTextColor),
                      decoration: InputDecoration.collapsed(
                          hintText: 'Password Anda',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                  ),
                ]),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.primaryColor),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text(
                    "Sign In",
                    style: MyStyle.labelFormText.copyWith(
                      color: Color(0xFFF1F0F2),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun ?",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: MyColor.secondaryTextColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.pushNamed(context, '/signup')
                      },
                      child: Text(" Daftar", style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: MyColor.primaryColor,
                        ), ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
