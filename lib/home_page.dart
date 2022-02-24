import 'package:flutter/material.dart';
import 'package:prototype_ui_app/screens/appointment.dart';
import 'package:prototype_ui_app/screens/donation.dart';
import 'package:prototype_ui_app/search-charity/search.dart';
import 'package:prototype_ui_app/screens/news.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prototype_ui_app/user-profile/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Donation(), // news
    const Search(), //search -> sub-screen : donation -> food / assets donation
    const Appointment(), //
    const UserProfile(), //
  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        elevation: 0,
        iconSize: 32,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.handHoldingHeart),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.bookmark),
            label: "Appointment",
          ),
          //BottomNavigationBarItem(
          //  icon: Icon(LineIcons.bell),
          //  label: "Notification",
          //),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.userCircle),
            label: "Profile",
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
