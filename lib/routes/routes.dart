import 'package:flutter/cupertino.dart';
import 'package:shop_easy/checkoutone.dart';
import 'package:shop_easy/checkouttwo.dart';
import 'package:shop_easy/confirm_email.dart';
import 'package:shop_easy/empty_cart.dart';
import 'package:shop_easy/routes/bottom_bar/bottom_bar.dart';
import 'package:shop_easy/routes/bottom_bar/cart.dart';
import 'package:shop_easy/routes/bottom_bar/fav_store.dart';
import 'package:shop_easy/routes/bottom_bar/home.dart';
import 'package:shop_easy/routes/routes_name.dart';
import 'package:shop_easy/search_error.dart';
import 'package:shop_easy/select_screen.dart';
import 'package:shop_easy/sign_in_screen.dart';
import 'package:shop_easy/sign_up_screen.dart';
import 'package:shop_easy/splash_screen.dart';
import 'package:shop_easy/success.dart';

import 'bottom_bar/profile.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const SplashScreen(),
  RoutesName.signInScreen: (context) => const SignInScreen(),
  RoutesName.signUpScreen: (context) => const SignUpScreen(),
  RoutesName.searchError: (context) => const SearchError(),
  RoutesName.success: (context) => const Success(),
  RoutesName.selectScreen: (context) => const SelectScreen(),
  RoutesName.checkOutOne: (context) => const CheckoutScreenOne(),
  RoutesName.checkOutTwo: (context) => const CheckOutTwo(),
  RoutesName.confirmEmail: (context) => const ConfirmEmail(),
  RoutesName.emptyCart: (context) => const EmptyCart(),
  RoutesName.home: (context) => const Home(),
  RoutesName.favStore: (context) => const FavStore(),
  RoutesName.cart: (context) => const Cart(),
  RoutesName.profile: (context) => const Profile(),
  RoutesName.bottomBar: (context) => const BottomBar(),
};
