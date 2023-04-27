import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_easy/common/common_button.dart';
import 'package:shop_easy/extension/extensions.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        child: Stack(
                          children: [
                            Container(
                              height: 169,
                            ),
                          ],
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
                AppButton(
                  onTap: () {
                    setState(() {});
                  },
                  title: "Checkout",
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
