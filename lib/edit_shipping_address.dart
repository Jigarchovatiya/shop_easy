import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_easy/res/common/app_appbar.dart';
import 'package:shop_easy/res/common/common_button.dart';
import 'package:shop_easy/res/common/common_textfield.dart';
import 'package:shop_easy/res/extension/extensions.dart';

class EditShippingAddress extends StatefulWidget {
  const EditShippingAddress({Key? key}) : super(key: key);

  @override
  State<EditShippingAddress> createState() => _EditShippingAddressState();
}

class _EditShippingAddressState extends State<EditShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        appBar: AppBar(),
        title: const Text("data"),
      ),
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
                const CommonTextField(
                  labelText: "Home",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                20.0.addHSpace(),
                const CommonTextField(
                  hintText: "Phone Number",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
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
                20.0.addHSpace(),
                const CommonTextField(
                  hintText: "Street Name",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                20.0.addHSpace(),
                const CommonTextField(
                  hintText: "Zip/Postal Code",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                20.0.addHSpace(),
                const CommonTextField(
                  hintText: "Additional Information",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                20.0.addHSpace(),
                Container(height: MediaQuery.of(context).size.height / 4.5),
                AppButton(
                  title: "save",
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
