import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/routes/routes_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/gaji/background.png"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    // color: Colors.red,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.blue.shade100,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 355),
                      ),
                      labelText: ' E-mail ',
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F6F6F),
                        ),
                      ),
                      hintText: 'dolores.chambers@example.com',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    autofocus: false,
                    maxLength: 10,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(),
                      border: OutlineInputBorder(),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F6F6F),
                        ),
                      ),
                      isDense: true,
                      enabled: true,
                      hintText: 'Passcode',
                      hintStyle: TextStyle(
                        color: Color(0xFFA1A1A1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.confirmEmail);
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
                          "Sign up",
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 350,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/gaji/Google logo.png",
                          height: 30,
                        ),
                        const Text(
                          " Sign up with Google",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.signInScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already a customer? ",
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Color(0xFF1E1E1E),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Color(0xFFCD7300),
                              fontWeight: FontWeight.w400,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
