import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   foregroundColor: Colors.black,
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     SvgPicture.asset("assets/icons/notification.svg"),
      //     SizedBox(width: 10),
      //   ],
      // ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  SvgPicture.asset("assets/icons/notification.svg"),
                ],
              ),
            ),
            Image.asset(
              "assets/gaji/background2.png",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color(0xFFD3D3D3),
                      width: 3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color(0xFFD3D3D3),
                      width: 2,
                    ),
                  ),
                  hintText: "Groceries, Dresses, suits, etc",
                  hintStyle: TextStyle(color: Color(0xFF1E1E1E), fontSize: 11),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0xFF9B4100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
