import 'package:flutter/material.dart';
import 'package:shop_easy/routes/routes.dart';
import 'package:shop_easy/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      //home: const ConfirmEmail(),
      routes: appRoutes,
      initialRoute: RoutesName.splashScreen,
    );
  }
}
