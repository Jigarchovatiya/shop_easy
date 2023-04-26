import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_easy/extension/extensions.dart';

import 'common/common_button.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/account.svg"),
                    10.0.addWSpace(),
                    const Text("Personal Details", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                20.0.addHSpace(),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 40,
                        offset: Offset(0, 15),
                        spreadRadius: 0,
                        color: Color(0x1A4A4A4A),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Name", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("dolores chambers", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Phone Number", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("+234 255 5594 546", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                20.0.addHSpace(),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg"),
                    10.0.addWSpace(),
                    const Text("Address", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                20.0.addHSpace(),
                Container(
                  height: 225,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 40,
                        offset: Offset(0, 15),
                        spreadRadius: 0,
                        color: Color(0x1A4A4A4A),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Country", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("Nigeria", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("State", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("Ogun", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("LGA", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("Egbado South", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Street Name", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("Lorem Ipsum", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Zip/Postal Code", style: TextStyle(fontSize: 13, color: Color(0xFFA1A1A1), fontWeight: FontWeight.w400)),
                            Text("100001", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height / 4.5),
                AppButton(
                  title: "Edit",
                  onTap: () {
                    // Navigator.pushNamed(context, RoutesName.signInScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
