import 'package:flutter/material.dart';
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

  Widget input(string label,){

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
            ],
          ),
        ),
      )),
    );
  }
}
