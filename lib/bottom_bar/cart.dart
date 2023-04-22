import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_easy/extension/extensions.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                20.0.addHSpace(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                20.0.addHSpace(),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/gaji/face wash.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRect(
                      // <-- clips to the 200x200 [Container] below
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                  ],
                ),
                20.0.addHSpace(),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/gaji/purse.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA500),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFFFE4B3),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 350,
                    height: 50,
                    child: const Center(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
