import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home2/seller_container.dart';
import '../home2/text_container.dart';
class homeTab2 extends StatefulWidget {
  const homeTab2({super.key});

  @override
  State<homeTab2> createState() => _homeTab2State();
}

class _homeTab2State extends State<homeTab2> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See more ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                          color: Color(0xff4838D1)
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10),
            Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextContainer(text: 'Art'),
                    SizedBox(width: 10),
                    TextContainer(text: 'Business'),
                    SizedBox(width: 10),
                    TextContainer(text: 'Comedy'),
                    SizedBox(width: 10),
                    TextContainer(text: 'Drama'),
                    SizedBox(width: 10),
                    TextContainer(text: 'Action'),

                  ],
                ),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended For You',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See more ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                          color: Color(0xff4838D1)
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 18),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/images/si.png',),
                  SizedBox(width: 30),
                  Image.asset('assets/images/s.png'),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Seller',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See more ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                          color: Color(0xff4838D1)
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            CarouselSlider.builder(
                itemCount: 1,
                itemBuilder: (context, index, realIndex) {
                  return sellerContainer();
                },
                options: CarouselOptions(
                  height: 144,
                  enlargeCenterPage: true,
                  onPageChanged: (index,reason){
                    setState(() {
                    });
                    selected=index;
                  },
                  enableInfiniteScroll: false,
                )),
            SizedBox(height:5,),



          ],
        ),
      ),
    );
  }



}