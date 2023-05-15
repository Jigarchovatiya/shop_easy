import 'package:flutter/material.dart';
import 'package:shop_easy/res/common/app_appbar.dart';
import 'package:shop_easy/res/common/app_item.dart';

class Section extends StatefulWidget {
  const Section({Key? key}) : super(key: key);

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  List product = [
    "assets/gaji/image1.png",
    "assets/gaji/image2.png",
    "assets/gaji/image3.png",
    "assets/gaji/image7.png",
    "assets/gaji/image8.png",
    "assets/gaji/image9.png",
    "assets/gaji/image10.png",
    "assets/gaji/image11.png",
    "assets/gaji/image12.png",
    "assets/gaji/image13.png",
    "assets/gaji/image14.png",
    "assets/gaji/image15.png",
  ];
  List<bool> like = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        appBar: AppBar(),
        title: const Text("Shoes"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: product.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 310,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) => AppItem(
                      image: product[index],
                      onTap: () {
                        like[index] = like[index] == true ? false : true;
                        setState(() {});
                      },
                      icon: like[index] == true ? Icons.favorite : Icons.favorite_border,
                      color: like[index] == true ? const Color(0xff9B0000) : const Color(0xff9B0000),
                      size: 23.0,
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
