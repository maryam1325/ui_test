import 'package:c11_exam_sun_online/tabs/home/badge_icon.dart';
import 'package:c11_exam_sun_online/tabs/moody_tabs/clender_tab.dart';
import 'package:c11_exam_sun_online/tabs/moody_tabs/grid_tab.dart';
import 'package:c11_exam_sun_online/tabs/moody_tabs/home_tab.dart';
import 'package:c11_exam_sun_online/tabs/moody_tabs/user_tab.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class moody extends StatefulWidget {
  static const String routeName = 'moody';
  const moody({super.key});

  @override
  State<moody> createState() => _moodyState();
}

class _moodyState extends State<moody> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35),
        child: Image.asset(
              'assets/images/logo.png'
          ),
        ),
        leadingWidth: 75,
        titleSpacing: 0,
        title: Text(
          'Moody',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: badges.Badge(
                position: badges.BadgePosition.topEnd(end: 2, top: 2),

                showBadge: true,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                )),
          )
        ],
      ),
      body: tabs[index],
      bottomNavigationBar: Container(
        height: 66,

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            currentIndex: index,
            onTap: (currentIndex) {
              index = currentIndex;
              setState(() {});
            },
            selectedItemColor: Color(0xff027A48),
            items: [
              BottomNavigationBarItem(icon: BadgeIcon(
                icon: Icons.home,
                showBadge: index == 0,

              ), label: ''),
              BottomNavigationBarItem(
                icon: BadgeIcon(
                  icon: Icons.grid_view,
                  showBadge: index == 1,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: BadgeIcon(
                      icon: Icons.calendar_today_outlined,
                    showBadge: index ==2,
                  ), label: ''),
              BottomNavigationBarItem(
                  icon: BadgeIcon(
                    icon: Icons.person_2_outlined,
                    showBadge: index ==3,
                  ), label: '')
            ]),
      ),
    );
  }
  List<Widget> tabs = [
    homeTab(),
    grideTab(),
    calenderTab(),
    userTab()
  ];
}
