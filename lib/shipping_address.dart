import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const BackButton(),
        title: const Text("Shipping Address"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/account.svg"),
                    Text("Personal Details",style: TextStyle(fontSize: )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
