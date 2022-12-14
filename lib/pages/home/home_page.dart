import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';
import 'package:happy_store/helper/my_style.dart';
import 'package:happy_store/providers/auth_provider.dart';
import 'package:happy_store/widgets/product_card.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';
import '../../providers/product_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  fetchData() async {
    print("Init Data");
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
  }

  @override
  void initState() {
    // TODO: implement initState
    // fetchData();
    Provider.of<ProductProvider>(context, listen: false).getProducts();
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timestamp) =>
    //     {Provider.of<ProductProvider>(context, listen: false).getProducts()});
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header(UserModel user) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello ${user.name},", style: MyStyle.titleText),
                Text("Mau belanja apa hari ini ?", style: MyStyle.subTitleText)
              ],
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/photo_profile.png'),
            radius: 25,
          ),
        ],
      );
    }

    Widget searchProduct() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColor.gray,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search, size: 24),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                style: GoogleFonts.poppins(
                    fontSize: 14, color: MyColor.secondaryTextColor),
                decoration: InputDecoration.collapsed(
                    hintText: 'Search Product',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.normal)),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.primaryColor,
                ),
                child: Text(
                  'Featured',
                  style: MyStyle.subTitleText.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: MyColor.secondaryTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Computer',
                  style: MyStyle.subTitleText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: MyColor.secondaryTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Headsets',
                  style: MyStyle.subTitleText.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: MyColor.secondaryTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Speaker',
                  style: MyStyle.subTitleText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: MyColor.secondaryTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Accessories',
                  style: MyStyle.subTitleText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget trendingSalesTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Trending Sales",
            style: MyStyle.titleText
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "See All",
            style: MyStyle.subTitleText
                .copyWith(fontSize: 14, color: MyColor.primaryColor),
          ),
        ]),
      );
    }

    // Widget trendingSalesProduct() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 30),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(children: [
    //         ProductCard(),
    //         ProductCard(),
    //         ProductCard(),
    //         ProductCard(),
    //         ProductCard(),
    //       ]),
    //     ),
    //   );
    // }

    Widget trendingSalesProduct() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: productProvider.products
                  .map(
                    (product) => ProductCard(product),
                  )
                  .toList()),
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          header(user),
          searchProduct(),
          categories(),
          trendingSalesTitle(),
          trendingSalesProduct()
        ]),
      )),
    ));
  }
}
