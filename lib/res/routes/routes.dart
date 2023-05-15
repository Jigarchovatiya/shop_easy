import 'package:flutter/cupertino.dart';
import 'package:shop_easy/res/routes/routes_name.dart';
import 'package:shop_easy/view/checkoutone.dart';

import '../../view/bottom_bar/bottom_bar.dart';
import '../../view/bottom_bar/cart.dart';
import '../../view/bottom_bar/fav_store.dart';
import '../../view/bottom_bar/home.dart';
import '../../view/bottom_bar/profile.dart';
import '../../view/checkouttwo.dart';
import '../../view/confirm_email.dart';
import '../../view/empty_cart.dart';
import '../../view/search_error.dart';
import '../../view/section.dart';
import '../../view/select_screen.dart';
import '../../view/sign_in_screen.dart';
import '../../view/sign_up_screen.dart';
import '../../view/splash_screen.dart';
import '../../view/success.dart';

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
  RoutesName.section: (context) => const Section(),
};
