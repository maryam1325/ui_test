
import 'package:c11_exam_sun_online/moody_screen/moody.dart';
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
      initialRoute: moody.routeName,
      routes: {
        moody.routeName:(context)=>moody(),
      },
    );
  }
}
