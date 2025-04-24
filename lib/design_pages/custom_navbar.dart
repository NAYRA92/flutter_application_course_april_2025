import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

int selectedIndex = 0;
class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
  bottomNavigationBar: mybar()
     
     

     
     
     
     
      // bottomNavigationBar: WaterDropNavBar(
      //   waterDropColor: Colors.amber,
      //   backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      //   onItemSelected: (index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      //   selectedIndex: selectedIndex,
      //   barItems: [
      //     BarItem(
      //       filledIcon: Icons.bookmark_rounded,
      //       outlinedIcon: Icons.bookmark_border_rounded,
      //     ),
      //     BarItem(
      //         filledIcon: Icons.favorite_rounded,
      //         outlinedIcon: Icons.favorite_border_rounded),
      //     BarItem(
      //         filledIcon: Icons.home,
      //         outlinedIcon: Icons.home_outlined),
      //   ],
      // ),
    );
  }

Widget mybar(){
  return GNav(
  rippleColor: const Color.fromARGB(255, 198, 93, 93), // tab button ripple color when pressed
  hoverColor: const Color.fromARGB(255, 213, 144, 144), // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15, 
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.grey[800], // unselected icon color
  activeColor: Colors.purple, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
  tabs: [
    GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    GButton(
      icon: Icons.favorite,
      text: 'Likes',
    ),
    GButton(
      icon: Icons.search,
      text: 'Search',
    ),
    GButton(
      icon: Icons.person,
      text: 'Profile',
    )
  ]
);
}
}