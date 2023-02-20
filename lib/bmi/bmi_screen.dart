import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
   BmiHome({super.key});

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
   double sliderValue = 100 ;
   bool isMale  = true;
   double age  =   10 ;
   double weight  = 50 ;


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BMI Calculators"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap:  ( ) {
                    isMale  = false ;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:
                       isMale ==false? Colors.red:  Colors.black ,
                      width: 6
                      )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/images/female.png",
                      height: 150,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap:  ( ) {
                    isMale = true;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color:   isMale ==true? Colors.red:  Colors.black  ,
                            width: 6
                        ),
                      color: Colors.white
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/images/male.png",
                        height: 150,
                      ),
                    ),
                  ),
                ),
              ],
            ),




            Container(

              padding: EdgeInsets.all(20),

              decoration: BoxDecoration  (
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text(  "Height",
                  style: TextStyle( color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( " ${ sliderValue.toInt() }" ,style: TextStyle(
                          color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("cm" ,style: TextStyle(color: Colors.grey),)
                    ],
                  ) ,
                  Slider(
                    activeColor: Colors.red,
                    value: sliderValue,
                    min: 100,
                    max: 200,
                    onChanged: (value ) {
                      sliderValue = value;
                      setState(() {});
                    },


                  ),



                ],
              ),
            ) ,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container (
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black ,
                      ),
                      child: Column(
                        children: [
                          Text( "WEIGHT\n $weight",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30 ,
                            color: Colors.white,
                            fontWeight:  FontWeight.bold
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(onPressed: ( ) {
                                if(weight!=0 ) {
                                  weight--;
                                }
                                setState(() {

                                });
                              }, icon: Icon(Icons.arrow_back_ios,
                              color: Colors.white,
                              )),
                              IconButton(onPressed: ( ) {
                                weight++ ;
                                setState(() {});
                              }, icon: Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),

                  Expanded(
                    child: Container (
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black ,
                      ),
                      child: Column(
                        children: [
                          Text( "AGE\n $age",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30 ,
                                color: Colors.white,
                                fontWeight:  FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(onPressed: ( ) {
                                if(age!=0 ) {
                                  age--;
                                }
                                setState(() {

                                });
                              }, icon: Icon(Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                              IconButton(onPressed: ( ) {
                                age++ ;
                                setState(() {

                                });
                              }, icon: Icon(Icons.arrow_forward_ios_sharp,
                                color: Colors.white,
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
            InkWell(

              onTap: ( ) {
                print ( age) ;
                print ( weight) ;
                print ( isMale ==true? "male" : "female"  ) ;
                print (sliderValue);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal:  70 ,
                  vertical:  15
                ),
                decoration: BoxDecoration(
                  color: Colors.red,

                  borderRadius: BorderRadius.circular(30),

                ),
                child: Text("CALCULATOR",

                  style: TextStyle(
                    letterSpacing: 3,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight:  FontWeight.bold
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    )  ;


  }
}