import 'package:flutter/material.dart';
import 'package:instagram_clone/views/profilepage.dart';
import 'package:instagram_clone/views/reels.dart';
import 'package:instagram_clone/views/search.dart';

import 'fav.dart';
import 'homepage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  List pages = [
    const HomePage(),
    SearchPage(),
    const InstagramReelsPage(),
    const WhoFollowedPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Image.network(
                "https://img.icons8.com/?size=512&id=83326&format=png",
                scale: 12.0,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.network(
                "https://img.icons8.com/?size=512&id=XU3XKgdpT0qG&format=png",
                scale: 12.0,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.network(
                "https://img.icons8.com/?size=512&id=MmRVttE0YfJH&format=png",
                scale: 12.0,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.network(
                "https://img.icons8.com/?size=512&id=pyJD3NYxWYD6&format=png",
                scale: 12.0,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image.network(
                "https://img.icons8.com/?size=512&id=7819&format=png",
                scale: 12.0,
              )),
        ],
      ),
    );
  }
}
