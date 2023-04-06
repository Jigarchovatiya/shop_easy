import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_easy/routes/bottom_bar/cart.dart';
import 'package:shop_easy/routes/bottom_bar/fav_store.dart';
import 'package:shop_easy/routes/bottom_bar/home.dart';
import 'package:shop_easy/routes/bottom_bar/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List widgetOptions = [
    const Home(),
    const FavStore(),
    const Cart(),
    const Profile(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFEFAF4),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
              backgroundColor: const Color(0x80F5F5F5),
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    selectedIndex == 0 ? "assets/icons/home_select.svg" : "assets/icons/home.svg",
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    selectedIndex == 1 ? "assets/icons/fav_store_select.svg" : "assets/icons/fav_store.svg",
                  ),
                  label: 'Fav Store',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    selectedIndex == 2 ? "assets/icons/cart_select.svg" : "assets/icons/cart.svg",
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    selectedIndex == 3 ? "assets/icons/profile_select.svg" : "assets/icons/profile.svg",
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: selectedIndex,
              selectedItemColor: const Color(0xffFFA500),
              unselectedItemColor: const Color(0xff6F6F6F),
              onTap: (value) => setState(() {
                    selectedIndex = value;
                  })),
        ),
        body: widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
