import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegramclone/theme.dart';
import 'package:telegramclone/user.dart';

import 'conversationiterm.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  List<ChatUsers> chatUsers = [
    ChatUsers(name :  "Malek Talaiche", messageText: "rak faragh doka ?", imageURL :  "assets/malek.jpg", time: "Now"),
    ChatUsers(name :  "Samy Benhafef", messageText: "waaach win rak ?", imageURL :  "assets/samy.jpg", time: "12:21"),
    ChatUsers(name :  "Oussama Djatou", messageText: "chikh", imageURL :  "assets/oussama.jpg", time: "10:32"),
    ChatUsers(name :  "abdelbaki krebbaza", messageText: "logo ta3k rah wajed ", imageURL :  "assets/abdelbaki.jpg", time: "9:15"),
    ChatUsers(name :  "rabah sidhoum", messageText: "esma3 ne9rew ghedwa ? ", imageURL :  "assets/rabah.jpg", time: "hier")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: CustomTheme.withe,
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
                           color:CustomTheme.primaryColor,
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
           ) ,

           SizedBox(height: 20,),

           SingleChildScrollView(
               scrollDirection: Axis.horizontal,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   CategoriesCard(CustomTheme.primaryColor, Icons.person, "Find People"),
                   CategoriesCard(Colors.blue.withOpacity(0.8), Icons.inbox_outlined  , "Invite Friends"),
                   CategoriesCard(CustomTheme.primaryColor, Icons.people, "Join Groupes"),
                 ],
               ),
             ),
             ),


           SingleChildScrollView(
             child: Column(
               children: [
                 ConversationList(
                   name: chatUsers[0].name,
                   messageText: chatUsers[0].messageText,
                   imageUrl: chatUsers[0].imageURL,
                   time: chatUsers[0].time,
                   isMessageRead: false,
                 ),
                 ConversationList(
                   name: chatUsers[1].name,
                   messageText: chatUsers[1].messageText,
                   imageUrl: chatUsers[1].imageURL,
                   time: chatUsers[1].time,
                   isMessageRead: false,
                 ),
                 ConversationList(
                   name: chatUsers[2].name,
                   messageText: chatUsers[2].messageText,
                   imageUrl: chatUsers[2].imageURL,
                   time: chatUsers[2].time,
                   isMessageRead: false,
                 ),
                 ConversationList(
                   name: chatUsers[3].name,
                   messageText: chatUsers[3].messageText,
                   imageUrl: chatUsers[3].imageURL,
                   time: chatUsers[3].time,
                   isMessageRead: false,
                 ),
                 ConversationList(
                   name: chatUsers[4].name,
                   messageText: chatUsers[4].messageText,
                   imageUrl: chatUsers[4].imageURL,
                   time: chatUsers[4].time,
                   isMessageRead: false,
                 ),

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



Card CategoriesCard(Color color , IconData icon , String text){
  return Card (
    margin: EdgeInsets.all(10),
    color: color,
    shadowColor: Colors.blueGrey,
    elevation: 1,
      shape: RoundedRectangleBorder(
          side:  BorderSide(color: color,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    child:
    Container(
      height: 130,
      width: 130,
      child: Stack(

        children: [
          Positioned(
            bottom: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 25.0,
                          ),
                        ]
                    ),
                    child: Icon(
                      icon,
                      color: Colors.black54,
                      size:30,
                    )
                ),

                Text(
                    text,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.bold

                  ),
                )

              ],
            ),
          )
        ],
      ),
    )
  );
}


