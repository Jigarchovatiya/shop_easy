import 'package:country_picker/country_picker.dart';
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                    SizedBox(width: width / 40),
                    const Text("Personal Details", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(height: height / 40),
                const CommonTextField(
                  labelText: "Home",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                SizedBox(height: height / 40),
                const CommonTextField(
                  hintText: "Phone Number",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                SizedBox(height: height / 40),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg"),
                    SizedBox(width: width / 40),
                    const Text("Address", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                SizedBox(height: height / 40),
                CommonTextField(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_drop_down_outlined, size: 25, color: Colors.black),
                    onPressed: () {
                      showCountryPicker(
                        context: context,
                        countryListTheme: CountryListThemeData(
                          flagSize: 25,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
                          bottomSheetHeight: 500, // Optional. Country list modal height
                          //Optional. Sets the border radius for the bottomsheet.
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          //Optional. Styles the search field.
                          inputDecoration: InputDecoration(
                            labelText: 'Search',
                            hintText: 'Start typing to search',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8C98A8).withOpacity(0.2),
                              ),
                            ),
                          ),
                        ),
                        onSelect: (Country country) => debugPrint('Select country: ${country.displayName}'),
                      );
                    },
                  ),
                  hintText: "Street Name",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                SizedBox(height: height / 40),
                const CommonTextField(
                  hintText: "Street Name",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                SizedBox(height: height / 40),
                CommonTextField(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_outlined, size: 25, color: Colors.black),
                  ),
                  hintText: "Zip/Postal Code",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                SizedBox(height: height / 40),
                const CommonTextField(
                  hintText: "Additional Information",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  enableInteractiveSelection: true,
                  maxLines: 1,
                  autofocus: false,
                ),
                20.0.addHSpace(),
                SizedBox(height: height / 300),
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
