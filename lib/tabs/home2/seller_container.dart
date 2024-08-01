import 'package:flutter/material.dart';

class sellerContainer extends StatelessWidget {
  const sellerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,  // Ensure the container has a fixed width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffF5F5FA),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15), // Updated padding for more balance
        child: Row(
          children: [
            Image.asset(
              'assets/images/seller.png',
              fit: BoxFit.cover,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Light Mage',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Laurie Forest',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6A6A8B),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
