import 'package:booking/Screens/BookingList/booking_list.dart';
import 'package:booking/Screens/HomeScreen/nav_bar.dart';
import 'package:booking/Screens/Notification/notification.dart';
import 'package:booking/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Screens/HomeScreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainControl(),
    );
  }
}

class MainControl extends StatefulWidget {
  @override
  _MainControlState createState() => _MainControlState();
}

class _MainControlState extends State<MainControl> {
  int currentIndex = 0;
  final tabs = [HomeScreen(), BookList(), Update(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: currentIndex,
            showElevation: false,
            itemCornerRadius: 4,
            onItemSelected: (index) => setState(() {
                  currentIndex = index;
                }),
            items: [
              BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(FontAwesomeIcons.calendar),
                title: Text('Booking'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notification'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                activeColor: Colors.black,
              )
            ]));
  }
}
