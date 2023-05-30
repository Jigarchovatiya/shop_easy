import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_easy/res/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, RoutesName.signInScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Image.asset("assets/gaji/shop easy.png", height: 30))],
        ),
      ),
    );
  }
}
