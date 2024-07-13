import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_app/screens/home_page/Notifikasi_Screen.dart';
import 'package:linkedin_app/screens/home_page/home_screen.dart';
import 'package:linkedin_app/screens/home_page/job_screen.dart';
import 'package:linkedin_app/screens/home_page/post_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    JobScreen(),
    PostScreen(),
    NotificationScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              iconSize: 22,
              unselectedItemColor: const Color(0xFF666666),
              selectedFontSize: 14,
              selectedItemColor: Colors.black,
              showUnselectedLabels: true,
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.house_fill,
                    size: 25,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.work,
                    size: 22,
                  ),
                  label: "Pekerjaan",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.solidSquarePlus,
                    size: 22,
                  ),
                  label: "Posting",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.bell_fill,
                    size: 22,
                  ),
                  label: "Notifikasi",
                ),
              ],
            ),
            body: _children[_currentIndex],
          ),
        );
      },
    );
  }
}
