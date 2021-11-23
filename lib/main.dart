import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        // Define the default brightness and colors.
        primaryColor: Color(0xFFBCE6FF),
        backgroundColor: Color(0xFFFFFFFF),
        // Define the default font family.
        fontFamily: 'Roboto',

        ),
      home: Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 40),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.only( left: 25),
                   child: Row(
                     children: [
                       Container(
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.5),
                               spreadRadius: 5,
                               blurRadius: 7,
                               offset: Offset(0, 3), // changes position of shadow
                             ),
                           ],
                           color: Color(0xFF90CAF9),
                           shape: BoxShape.circle ,
                         ),
                         child: Icon(
                           Icons.airplanemode_on_outlined ,
                           color:Colors.white ,
                         ),
                       ) ,




                       const Padding(
                         padding: EdgeInsets.only(left : 10.0),
                         child: Text("Telegram" ,
                         style:TextStyle(
                           fontWeight: FontWeight.w500,
                           fontSize: 32,
                           color: Color(0xFF424242),

                         )
                           ,),
                       ) ,

                     ],
                   ),
                 ),

                 const Padding(
                   padding: EdgeInsets.only(right: 25),
                   child: Icon(
                     Icons.search ,
                     color: Color(0xFF424242),
                     size :35
                   ),
                 )
               ],
             ),
           )
         ],
       ),
     ),
      ),
    );
  }
}
