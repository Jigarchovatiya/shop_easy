import 'package:flutter/material.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButton(),
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 50),
                  child: Image.asset("assets/gaji/first.png", height: 295),
                ),
                const Center(
                  child: Text(
                    "    Your shopping cart is empty\nYou haven't added any items yet",
                    style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 130),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFA500),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Go to shop",
                        style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
