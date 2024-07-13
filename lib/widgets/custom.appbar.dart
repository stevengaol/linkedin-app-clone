import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_app/screens/home_page/profil_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';


class CustomAppBar extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const CustomAppBar({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to ProfileScreen when the profile icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: ClipOval(
              child: Image.asset(
                'assets/profile1.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 40,
            width: sizingInformation!.screenSize.width / 1.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFEEF3F7),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF666666),
                ),
              ),
            ),
          ),
          Icon(
            FontAwesomeIcons.solidCommentDots,
            color: Color(0xFF666666),
            size: 25,
          ),
        ],
      ),
    );
  }
}
