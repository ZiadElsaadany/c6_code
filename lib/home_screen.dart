import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.email, required this.password}) : super(key: key);

  final String email ;
  final String password;


  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          title: Text("Facebook Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("your email: $email",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 18
                 ),
                 ),
               ],
             ) ,
             Text("your password: $password",
               style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 18
               ),
             textAlign: TextAlign.center,
             ) ,
          ],
        ),
      );
  }
}
