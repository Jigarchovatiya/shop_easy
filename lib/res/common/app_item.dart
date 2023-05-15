import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppItem extends StatelessWidget {
  final String? image;
  final IconData? icon;
  final Color? color;
  final double? size;
  final VoidCallback? onTap;
  const AppItem({
    Key? key,
    this.image,
    this.onTap,
    this.icon,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
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
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: onTap!,
                      child: Icon(
                        icon,
                        color: color,
                        size: size,
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
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 16,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Color(0xffEAC92C),
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint("$rating");
                            },
                          ),
                        ],
                      ),
                      SizedBox(width: width / 40),
                      const Text(
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
                  SizedBox(height: height / 140),
                  const Text(
                    "Product Name",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: height / 140),
                  Row(
                    children: [
                      const Text(
                        "\$841.00",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontFamily: "Poppins",
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: width / 40),
                      const Text(
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
    );
  }
}
