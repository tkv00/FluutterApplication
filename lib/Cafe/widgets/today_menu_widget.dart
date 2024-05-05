import 'package:flutter/material.dart';
 class TodayMenuWidget extends StatelessWidget {
   const TodayMenuWidget({super.key});

   @override
   Widget build(BuildContext context) {
     List<String> todayMenuUrl=[
       "assets/images/cake01.jpg",
       "assets/images/cake02.jpg",
       "assets/images/cake03.jpg",
       "assets/images/dessert01.jpg",
       "assets/images/dessert02.jpg",
     ];
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text('투썸의 오늘의 인기 메뉴'
           ,style: Theme.of(context).textTheme.
               titleLarge
           ),
           GridView.builder(
             shrinkWrap: true,
          itemCount: todayMenuUrl.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
             ),
             itemBuilder: (context,index){
            return Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset("${todayMenuUrl[index]}"),);
             },
           ),
         ],
       ),
     );
   }
 }
