import 'package:flutter/material.dart';

class AzkarDetails extends StatelessWidget {
   AzkarDetails({Key? key, required this.azkarStrings, required this.azkarNumber}) : super(key: key);

   final List<String> azkarStrings ;
   final List<int>    azkarNumber ;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
title: const Text(   "أذكار"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemCount: azkarStrings.length,
            itemBuilder:(ctx,index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20) ,
                      border: Border.all(color: Colors.black)


                    ),
                    child: Text(azkarStrings[index]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5 ,
                      vertical: 5
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                        borderRadius: BorderRadius.circular(5) ,
                        border: Border.all(color: Colors.black)


                    ),
                    child: Text("${azkarNumber[index]}",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  )
                ],
              );
            },
          separatorBuilder: (ctx,index) {
            return SizedBox(
              height: 20,
            );
          },
        ),
      ),
    );
  }
}
