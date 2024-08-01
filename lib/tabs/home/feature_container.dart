import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class featureContainer extends StatelessWidget {
  const featureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffECFDF3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Positive Vibes',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff344054)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Boost your mood with positive vibes',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: Color(0xff32D583),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '10 mins',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset('assets/images/Walking the Dog.png'),
          ),
        ],
      ),
    );
  }
}