import 'package:c11_exam_sun_online/tabs/books_tabs/home_tab2.dart';
import 'package:c11_exam_sun_online/tabs/books_tabs/library_tab.dart';
import 'package:c11_exam_sun_online/tabs/books_tabs/search_tab.dart';
import 'package:flutter/material.dart';
class books extends StatefulWidget {
  static const String routeName = 'books';
  const books({super.key});

  @override
  State<books> createState() => _booksState();
}

class _booksState extends State<books> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Image.asset('assets/images/Logo2.png'),
        ),
        leadingWidth: 80,
        titleSpacing: 0,
        title: RichText(
          text: TextSpan(
              text: 'Audi',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff4838D1),
                  fontWeight: FontWeight.w700),
              children: <TextSpan>[
                TextSpan(
                  text: 'Books',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff4838D1),
                      fontWeight: FontWeight.w300),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange
                  ),)
              ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(
              Icons.settings_outlined,
              color: Color(0xff4838D1),
              size: 25,
            ),
          )
        ],
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff4838D1),
        onTap: (Index) {
          index = Index;
          setState(() {});
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_sharp), label: 'Library'),
        ],
      ),
    );
  }

List<Widget> tabs = [
  homeTab2(),
  searchTab(),
  libraryTab()
];
}
