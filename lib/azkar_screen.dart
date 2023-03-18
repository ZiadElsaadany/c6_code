import 'package:azkary_c6_code/azkar_details.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
   AzkarScreen({Key? key}) : super(key: key);
  List<String> azkar = [
    "أذكار الصباح",
    // texts :[
    // number
    // ]
    //  number: 31
    "أذكار المساء",


    "أذكار النوم",
    "أذكار بعد الصلاة",
  ];
  List<int> numbers = [
    31,
    32,

    14,
    4,

   ];





   List<String> icons = [
"assets/azkar_Sabah.png",
     "assets/img_13.png" ,
     "assets/img_14.png",
     "assets/img_15.png"
   ];


   List<String>  azkarSabahText= [
     ''' أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ
اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]. 
''' ,

     ''' 
     بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم
قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.
      '''
   ] ;
   List<int>  azkarSabahNumbers = [
     1 , 3
   ] ;
   List<int>  azkarMsaaNumbers= [
     1 , 1
   ] ;
   List<String>  azkarMsaaText= [
     '''أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ
اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]. ''' ,

     ''' أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ
آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. [البقرة 285 - 286]. '''
   ] ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 4,  //index < 4

        // index = 0
        // index= 1
        //index= 2
        // index= 3
        itemBuilder: (ctx , index){
          return    Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            elevation: 10,
            child: ListTile(
              
              
              onTap: ( ) {  
                Navigator.push(context, MaterialPageRoute(builder:(ctx)  {
                  return AzkarDetails(
    azkarStrings:  index ==0 ?azkarSabahText:

    index== 1 ? azkarMsaaText: []

                    ,

                    azkarNumber: index==0 ?  azkarSabahNumbers :
               index==1 ?      azkarMsaaNumbers :  []
                    ,

                  );
                } ));
              } ,

              title: Text(azkar[index],
                style: const TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("${numbers[index]}"),
              trailing: Image.asset(icons[index]),
            ),
          );
        },
      ),
    );
  }
}

/**
 *
 *
 *
 *  List<Map>      map =  [
 *
 *      {
 *       "AZKAR SABAH": {
 *       "number" : 31 ,
 *       "texts": [
 *        {
 *        "string" :  " " ,
 *        "number" : 10
 *        }
 *       ] ,
 *
 *
 *       }
 *      }
 *
 *
 *
 * ]
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *    Map  scores=  {
 *    "ahmed" :  50 ,
 *    "mohamed" :100
 *
 *
 *    }
 *
 *
 * */