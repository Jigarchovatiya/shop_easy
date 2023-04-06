import 'package:flutter/material.dart';
import 'package:shop_easy/routes/routes_name.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({Key? key}) : super(key: key);

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Confirm email",
                  style: TextStyle(color: const Color(0xFF1E1E1E), fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 40),
                Image.asset("assets/gaji/mail.png", height: 240),
                SizedBox(height: 50),
                Text(
                  "A link has been sent to",
                  style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 13),
                ),
                SizedBox(height: 5),
                Text(
                  "dolores.chambers@example.com",
                  style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  "Click on the link to verify your email",
                  style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 13),
                ),
                const SizedBox(height: 10),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.bottomBar);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 140),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFA500),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Continue",
                        style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      textAlign: TextAlign.center,
                      "Resend email",
                      style: TextStyle(color: const Color(0xFFFFA500), fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
