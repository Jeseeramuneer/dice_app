import 'dart:math';

import 'package:flutter/material.dart';
 void main()=>runApp( MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyApp()));

 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   int num1=1;
   int num2=1;
   void Display(){
     num1=Random().nextInt(6)+1;
     num2=Random().nextInt(6)+1;
     setState(() {
       num1;
       num2;
     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title:Text('DiceApp'),
         backgroundColor:Colors.teal,
       ),
       body:Row(
         children: [
           Expanded(
             child: TextButton(onPressed: (){
               Display();
             },

                 child: Image.asset('assets/dice$num1.png')),
           ),
           Expanded(
             child: TextButton(onPressed: (){
               Display();
             },
                 child: Image.asset('assets/dice$num2.png')),
           ),

       ],

       )
     );
   }
 }

