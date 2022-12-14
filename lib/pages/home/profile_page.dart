import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_style.dart';

import '../../helper/my_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget buttonChangePassword() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE6E9EA),
            )),
        child: Row(
          children: [
            Image.asset(
              "assets/i_unlock.png",
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "Ganti Kata Sandi",
              style: MyStyle.profileMenuText,
            )
          ],
        ),
      ),
    );
  }

  Widget buttonInformasi() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE6E9EA),
            )),
        child: Row(
          children: [
            Image.asset(
              "assets/i_informasi.png",
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "Informasi Bantuan",
              style: MyStyle.profileMenuText,
            )
          ],
        ),
      ),
    );
  }

  Widget buttonPengaturan() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE6E9EA),
            )),
        child: Row(
          children: [
            Image.asset(
              "assets/i_pengaturan.png",
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "Pengaturan",
              style: MyStyle.profileMenuText,
            )
          ],
        ),
      ),
    );
  }

  Widget buttonRating() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE6E9EA),
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/i_star.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Pengaturan",
                  style: MyStyle.profileMenuText,
                ),
              ],
            ),
            const Icon(Icons.keyboard_arrow_right, color: Colors.black)
          ],
        ),
      ),
    );
  }

  Widget buttonLogout() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 44,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFE6E9EA),
            )),
        child: Row(
          children: [
            Image.asset(
              "assets/i_logout.png",
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "Keluar Akun",
              style: MyStyle.profileMenuText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile", style: MyStyle.appBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/photo_profile.png'),
                    radius: 50,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Shinta Karina",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XFF032630)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 114,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.primaryColor),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ubah Profile",
                        style: GoogleFonts.poppins(
                            color: const Color(0xFFF6F6F6),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  buttonChangePassword(),
                  buttonInformasi(),
                  buttonPengaturan(),
                  buttonRating(),
                  buttonLogout()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
