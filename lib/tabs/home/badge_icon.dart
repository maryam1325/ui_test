import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgeIcon extends StatelessWidget {
  final IconData icon;
  final bool showBadge;
  final String badgeText;

  BadgeIcon({required this.icon, this.showBadge = false, this.badgeText = ''});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Icon(icon),
        if (showBadge)
          Positioned(
            bottom: -15,
            height: 6,// Adjust this value to position the badge below the icon
            child: badges.Badge(
              position: badges.BadgePosition.bottomEnd(end: 0, bottom: 0),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Color(0xff027A48), // Badge color
                borderRadius: BorderRadius.circular(8), // Badge border radius
              ),

            ),
          ),
      ],
    );
  }
}
