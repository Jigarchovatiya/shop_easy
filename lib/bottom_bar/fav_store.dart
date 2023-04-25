import 'package:flutter/material.dart';
import 'package:shop_easy/extension/extensions.dart';

class FavStore extends StatefulWidget {
  const FavStore({Key? key}) : super(key: key);

  @override
  State<FavStore> createState() => _FavStoreState();
}

class _FavStoreState extends State<FavStore> {
  List product = [
    "assets/gaji/product1.png",
    "assets/gaji/product2.png",
    "assets/gaji/product3.png",
    "assets/gaji/product4.png",
    "assets/gaji/product5.png",
    "assets/gaji/product6.png",
    "assets/gaji/product7.png",
    "assets/gaji/product8.png",
  ];
  List imageList = [
    "assets/gaji/shop1.png",
    "assets/gaji/shop2.png",
    "assets/gaji/shop3.png",
    "assets/gaji/shop4.png",
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Favourite Stores",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                20.0.addHSpace(),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: imageList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 2.5,
                  ),
                  itemBuilder: (context, index) => Image.asset(imageList[index], height: 50),
                ),
                20.0.addHSpace(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product across favourite stores",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
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
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
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
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Product Name",
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const [
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
