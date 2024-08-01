import 'package:c11_exam_sun_online/emoji_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class homeTab extends StatefulWidget {
  const homeTab({super.key});

  @override
  State<homeTab> createState() => _homeTabState();
}

class _homeTabState extends State<homeTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hello,',
                style: GoogleFonts.inter(
                    fontSize: 20,
                ),
              ),
              Text(
                ' Sara Rose',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold,

                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text(
            'How are you feeling today ?',
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EmojiContainer(image: 'assets/images/love.png',text: 'Love',),
              EmojiContainer(image: 'assets/images/cool.png',text: 'Cool'),
              EmojiContainer(image: 'assets/images/happy.png',text: 'Happy'),
              EmojiContainer(image: 'assets/images/sad.png',text: 'Sad'),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Feature',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Text('See more ',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff027A48),
                  ),),
                  Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xff027A48),)
                ],
              )
            ],
          ),
          SizedBox(height: 20),
     /*     CarouselSlider.builder(
              itemCount: 3,
              itemBuilder:(context, index, realIndex){
                return HealthContainer();
              } ,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  onPageChanged: (index,reason){
                    setState(() {

                    });
                    selected=index;
                  }
              )),*/
          SizedBox(height: 10),
        /*  Center(
            child:
            BuildIndicator(),
          ),*/
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exercise',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Text('See more ',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff027A48),
                  ),),
                  Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xff027A48),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          /*   Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallContainer(
                text: 'Relaxation',
                image: 'assets/images/Relax.png',
                color: Color(0xffF9F5FF),
              ),
              SmallContainer(
                text: 'Meditation',
                image: 'assets/images/maditation.png',
                color: Color(0xffFDF2FA),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallContainer(
                text: 'Breath',
                image: 'assets/images/breath.png',
                color: Color(0xffFFFAF5),
              ),
              SmallContainer(
                text: 'Yoga',
                image: 'assets/images/yoga.png',
                color: Color(0xffF0F9FF),
              ),
            ],
          ),
          */


        ],
      ),
    );
  }
}
