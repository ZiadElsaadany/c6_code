
import 'package:azkary_c6_code/azkar_screen.dart';
import 'package:azkary_c6_code/sebha_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int current = 0;
   List<Widget>  screens = [
     AzkarScreen()  ,
      SebhaScreen()
   ] ;
   // 0 azkar
   // 1 sebha
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          currentIndex:current, //1
         // 0  --> 1
         // onChanged:(value) { }
          onTap: ( index) {
              current  = index ;
              setState(() {});
              //setState
              //1
              //
          },

          items:
       const   [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "الأذكار"
            ), // 0
            BottomNavigationBarItem(icon: Icon(Icons.done),
            label: "السبحة"
            ), //1
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("أذكاري"),
        ),
        body:screens[current] ,
        // 0
        // 1
        // 0


      ),
    );
  }
}
