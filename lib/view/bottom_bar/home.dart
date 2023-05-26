import 'package:flutter/material.dart';
import 'package:shop_easy/res/extension/extensions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> like = [
    false,
    false,
    false,
  ];
  List product = [
    "assets/gaji/camera.png",
    "assets/gaji/lipstick.png",
    "assets/gaji/cream.png",
  ];
  List profileList = [
    {"image": "assets/gaji/1.png", "name": "Men"},
    {"image": "assets/gaji/2.png", "name": "women"},
    {"image": "assets/gaji/3.png", "name": "Baby"},
    {"image": "assets/gaji/4.png", "name": "Groceries"},
    {"image": "assets/gaji/5.png", "name": "Electronic"},
    {"image": "assets/gaji/6.png", "name": "Beauty"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/gaji/background2.png",
                ),
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xFFD3D3D3),
                        width: 3,
                      ),
                    ),
                    fillColor: const Color(0xFFD3D3D3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xFFD3D3D3),
                        width: 2,
                      ),
                    ),
                    hintText: "Groceries, Dresses, suits, etc",
                    hintStyle: const TextStyle(color: Color(0xFF1E1E1E), fontSize: 11),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xFF9B4100),
                    ),
                  ),
                ),
                20.0.addHSpace(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                10.0.addHSpace(),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => 15.0.addWSpace(),
                    itemCount: profileList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            profileList[index]["image"],
                            height: 60,
                          ),
                          10.0.addHSpace(),
                          Text(
                            profileList[index]["name"],
                            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                20.0.addHSpace(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 310,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) => index == 3
                        ? Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    textAlign: TextAlign.left,
                                    "See more",
                                    style: TextStyle(fontFamily: "poppins", fontSize: 13, fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Container(
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
