import 'package:flutter/material.dart';

class EmojiContainer extends StatelessWidget {
  String image;
  String text;
  EmojiContainer({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: Color(0xffE4E7EC),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset('$image'),
          ),
        ),
        SizedBox(height: 6,),
        Text('$text',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
      ],
    );
  }
}
