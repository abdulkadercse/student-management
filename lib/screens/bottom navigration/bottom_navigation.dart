import 'package:firebase_counter_example/screens/bottom%20pages/add.dart';
import 'package:flutter/material.dart';
import '../bottom pages/home_screen.dart';
import '../bottom pages/profile.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  List pages = [
    const StudentList(),
    const AddNewStudent(),
    const Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xff0601B4),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
    );
  }
}
