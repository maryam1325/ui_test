import 'package:flutter/material.dart';

class sellerContainer extends StatelessWidget {
  const sellerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffF5F5FA)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:15),
        child: Row(
          children: [
            Image.asset('assets/images/seller.png'),
            Padding(
              padding: const EdgeInsets.only(top:50,left: 15),
              child: Column(
                children: [
                  Text('Light Mage',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  Text('Laurie Forest',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6A6A8B)
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}