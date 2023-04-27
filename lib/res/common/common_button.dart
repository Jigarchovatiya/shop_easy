import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const AppButton({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFA500),
          border: Border.all(
            width: 1,
            color: const Color(0xFFFFE4B3),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        width: 350,
        height: 50,
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
