import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextContainer extends StatefulWidget {
  String text;
  TextContainer({super.key,required this.text});

  @override
  State<TextContainer> createState() => _TextContainerState();
}

class _TextContainerState extends State<TextContainer> {
  bool select=false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
          '${widget.text}',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16
          )
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
              color: Colors.white
          )
      ),
      backgroundColor: Color(0xffF5F5FA),
      selected:select,
      showCheckmark: false,
      onSelected: (index){
        select=index;
        setState(() {

        });
      },
      selectedColor: Color(0xff5544f8),
    );
  }
}