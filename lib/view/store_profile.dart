import 'package:flutter/material.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({Key? key}) : super(key: key);

  @override
  State<StoreProfile> createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  bool favorite = false;
  List<bool> like = [
    false,
    false,
    false,
  ];
  List<bool> like2 = [
    false,
    false,
    false,
  ];
  List product = [
    "assets/gaji/image1.png",
    "assets/gaji/image2.png",
    "assets/gaji/image3.png",
  ];
  List product2 = [
    "assets/gaji/image4.png",
    "assets/gaji/image5.png",
    "assets/gaji/image6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_off_outlined,
              size: 24,
              color: Colors.black,
            ),
          )
        ],
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            debugPrint(" Back ");
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0x33FFFFFF), width: 10),
                    ),
                    child: Image.asset("assets/gaji/profile1.png", height: 120, fit: BoxFit.cover),
                  ),
                ),
                const Text(
                  textAlign: TextAlign.left,
                  "Boots & Boots",
                  style: TextStyle(fontFamily: "poppins", fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      textAlign: TextAlign.left,
                      "8502 Preston Rd. Inglewood, Maine 98380",
                      style: TextStyle(fontFamily: "poppins", fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
                    ),
                    InkWell(
                      onTap: () {
                        favorite = favorite == true ? false : true;
                        setState(() {});
                      },
                      child: Icon(
                        favorite == true ? Icons.favorite : Icons.favorite_border,
                        color: favorite == true ? const Color(0xff9B0000) : const Color(0xff9B0000),
                        size: 23,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 40,
                ),
                const Text(
                  textAlign: TextAlign.left,
                  "Shoes",
                  style: TextStyle(fontFamily: "poppins", fontSize: 18, fontWeight: FontWeight.w500),
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
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
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
                const Text(
                  textAlign: TextAlign.left,
                  "Male Shirts",
                  style: TextStyle(fontFamily: "poppins", fontSize: 18, fontWeight: FontWeight.w500),
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
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
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
                                          product2[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: InkWell(
                                            onTap: () {
                                              like2[index] = like2[index] == true ? false : true;
                                              setState(() {});
                                            },
                                            child: Icon(
                                              like2[index] == true ? Icons.favorite : Icons.favorite_border,
                                              color: like2[index] == true ? const Color(0xffF87265) : const Color(0xff9B0000),
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
