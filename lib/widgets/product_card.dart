import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';

import '../helper/my_style.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  ProductCard(this.product);
    
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          product.thumbnail!,
          height: 160,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Text(product.name??"",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Text(product.category!.name??"",
            style: MyStyle.subTitleText.copyWith(color: MyColor.secondaryTextColor)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$${product.price.toString() ??0}",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                backgroundColor:
                    MaterialStateProperty.all(MyColor.primaryColor),
                // overlayColor:
                //     MaterialStateProperty.resolveWith<Color?>((states) {
                //   if (states.contains(MaterialState.pressed))
                //     return Colors.red; // <-- Splash color
                // }),
              ),
            )
          ],
        )
      ]),
    );
  }
}
