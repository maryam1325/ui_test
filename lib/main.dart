
import 'package:c11_exam_sun_online/books.dart';
//import 'package:c11_exam_sun_online/moody.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: books.routeName,
      routes: {
        books.routeName:(context)=>books(),
      },
    );
  }
}
