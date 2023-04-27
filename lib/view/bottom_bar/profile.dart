import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_easy/extension/extensions.dart';
import 'package:shop_easy/model/profile_model.dart';

import '../routes/routes_name.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0x33FFFFFF),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/gaji/profile2.png", height: 120, fit: BoxFit.cover),
                    ),
                  ),
                ),
                10.0.addHSpace(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    "Dolores Chambers",
                    style: TextStyle(fontFamily: "poppins", fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      textAlign: TextAlign.left,
                      "dolores.chambers@example.com",
                      style: TextStyle(fontFamily: "poppins", fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
                    ),
                    Icon(Icons.drive_file_rename_outline)
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 40,
                ),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.section);
                        },
                        title: Text(
                          ProfileModalList[index].title ?? "",
                        ),
                        leading: SvgPicture.asset(
                          ProfileModalList[index].image ?? "",
                        ),
                      )
                    ],
                  ),
                  separatorBuilder: (context, index) => 10.0.addHSpace(),
                  itemCount: ProfileModalList.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
