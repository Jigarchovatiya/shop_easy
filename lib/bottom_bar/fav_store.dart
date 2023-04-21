import 'package:flutter/material.dart';

class FavStore extends StatefulWidget {
  const FavStore({Key? key}) : super(key: key);

  @override
  State<FavStore> createState() => _FavStoreState();
}

class _FavStoreState extends State<FavStore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Favourite Stores",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
