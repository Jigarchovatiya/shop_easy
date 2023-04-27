import 'package:flutter/material.dart';
import 'package:shop_easy/res/common/app_appbar.dart';

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
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    product[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: InkWell(
                                      onTap: () {
                                        like[index] = like[index] == true ? false : true;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        like[index] == true ? Icons.favorite : Icons.favorite_border,
                                        color: like[index] == true ? const Color(0xff9B0000) : const Color(0xff9B0000),
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Color(0xFFFFD700),
                                      ),
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Color(0xFFFFD700),
                                      ),
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Color(0xFFFFD700),
                                      ),
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Color(0xFFFFD700),
                                      ),
                                      Icon(
                                        Icons.star_rate_sharp,
                                        size: 20,
                                        color: Color(0xFFFFD700),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "(5.0)",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontFamily: "Poppins",
                                          height: 2,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Product Name",
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "\$841.00",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontFamily: "Poppins",
                                          decoration: TextDecoration.lineThrough,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "\$841.00",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
