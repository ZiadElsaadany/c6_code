import 'package:azkary_c6_code/home_screen.dart';
import 'package:flutter/material.dart';

void main   ( ) {
  runApp(AzkaryApp()) ;
}


class AzkaryApp extends StatelessWidget {
  const AzkaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}
