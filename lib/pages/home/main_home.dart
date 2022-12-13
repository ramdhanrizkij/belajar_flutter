import 'package:flutter/material.dart';
import 'package:happy_store/helper/my_color.dart';
import 'package:happy_store/pages/home/cart_page.dart';
import 'package:happy_store/pages/home/favorite_page.dart';
import 'package:happy_store/pages/home/home_page.dart';
import 'package:happy_store/pages/home/profile_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int currentIndex = 0;

  Widget content(){
    switch(currentIndex){
      case 0:
        return HomePage();
        break;
      case 1:
        return FavoritePage();
        break;
      case 2:
        return CartPage();
        break;
      case 3:
        return ProfilePage();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_home.png",
                width: 20,
                height: 20,
                color: currentIndex == 0 ? MyColor.primaryColor : Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_favorite.png",
                width: 20,
                color: currentIndex == 1 ? MyColor.primaryColor : Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_cart.png",
                width: 20,
                color: currentIndex == 2 ? MyColor.primaryColor : Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_profile.png",
                width: 20,
                color: currentIndex == 3 ? MyColor.primaryColor : Colors.grey,
              ),
              label: ''),
        ],
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        }
      ),
      body: content()
    );
  }
}
