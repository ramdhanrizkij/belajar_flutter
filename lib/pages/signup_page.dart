import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';
import 'package:happy_store/helper/my_style.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  Widget header() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Daftar",
          style: MyStyle.titleText,
        ),
        Text(
          "Daftar pengguna baru",
          style: MyStyle.subTitleText,
        ),
      ],
    );
  }

  Widget inputNama() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Nama Lengkap",
          style: MyStyle.labelFormText,
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: MyColor.gray),
          child: Row(children: [
            Image.asset(
              "assets/i_user_profile.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    fontSize: 14, color: MyColor.secondaryTextColor),
                decoration: InputDecoration.collapsed(
                    hintText: 'Nama Lengkap',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.normal)),
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Widget inputUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: MyStyle.labelFormText,
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: MyColor.gray),
          child: Row(children: [
            Image.asset(
              "assets/i_username.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    fontSize: 14, color: MyColor.secondaryTextColor),
                decoration: InputDecoration.collapsed(
                    hintText: 'Username',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.normal)),
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Widget inputEmail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Alamat Email",
          style: MyStyle.labelFormText,
        ),
        // SizedBox(height: 12,),
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: MyColor.gray),
          child: Row(children: [
            Image.asset(
              "assets/i_email.png",
              width: 16,
              height: 16,
            ),
            const SizedBox(
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
      ],
    );
  }

  Widget inputPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              borderRadius: BorderRadius.circular(12), color: MyColor.gray),
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
      ],
    );
  }

  Widget buttonDaftar() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: MyColor.primaryColor),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Sign Up",
          style: MyStyle.labelFormText.copyWith(
            color: Color(0xFFF1F0F2),
          ),
        ),
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sudah punya akun ?",
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: MyColor.secondaryTextColor,
            ),
          ),
          GestureDetector(
            onTap: () => {Navigator.pushNamed(context, '/login')},
            child: Text(
              " Login",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: MyColor.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(
                height: 70,
              ),
              inputNama(),
              const SizedBox(
                height: 20,
              ),
              inputUsername(),
              const SizedBox(
                height: 20,
              ),
              inputEmail(),
              const SizedBox(
                height: 20,
              ),
              inputPassword(),
              const SizedBox(
                height: 30,
              ),
              buttonDaftar(),
              footer(context)
            ],
          ),
        ),
      )),
    );
  }
}
