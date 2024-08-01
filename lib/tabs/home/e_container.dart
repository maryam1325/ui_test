import 'package:flutter/material.dart';

class eContainer extends StatelessWidget {
  String image;
  Color color;
  String text;
  eContainer({required this.text,required this.image,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset('$image'),
            SizedBox(width: 15),
            Text('$text',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14
            ),)

          ],
        ),
      ),
    );
  }
}
