import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/common/common_textfield.dart';
import 'package:shop_easy/extention/extensions.dart';
import 'package:shop_easy/routes/routes_name.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/gaji/background.png"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 1.9,
                      // color: Colors.red,
                    ),
                    CommonTextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 20,
                      enableInteractiveSelection: true,
                      hintText: "Email",
                      labelText: "E-mail",
                      validator: (value) => value!.isValidEmail() ? null : "Please Enter E-mail",
                      textInputAction: TextInputAction.next,
                      controller: emailController,
                      autofocus: true,
                    ),
                    const SizedBox(height: 20),
                    CommonTextField(
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      maxLines: 20,
                      enableInteractiveSelection: true,
                      hintText: "Password",
                      validator: (value) => value!.isValidPassword() ? null : "Please Enter Correct Password",
                      textInputAction: TextInputAction.next,
                      controller: passwordController,
                      autofocus: false,
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.validate();
                          debugPrint("validate ---> ${formKey.currentState!.validate()}");
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RoutesName.confirmEmail,
                            (route) => false,
                          );
                          debugPrint('Bottom Screen ----->>');
                          setState(() {});
                        } else {
                          formKey.currentState!.save();
                        }
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
                            "Log in",
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
                            " Log In with Google",
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
                        Navigator.pushNamed(context, RoutesName.signUpScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "A new member? ",
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Color(0xFF1E1E1E),
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: "Sign Up",
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
      ),
    );
  }
}
