
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegramclone/theme.dart';

class ConversationList extends StatefulWidget{
  String ? name;
  String ? messageText;
  String ? imageUrl;
  String ? time;
  bool ? isMessageRead;
  ConversationList(
  {this.name,this.messageText, this.imageUrl,this.time,this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 6 , bottom: 8 , right: 4),
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration:  BoxDecoration(

                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill ,

                              image:AssetImage(widget.imageUrl.toString())
                          ),


                        boxShadow: [
                          BoxShadow(
                           color: Colors.black54 ,
                            spreadRadius: 1,
                            blurRadius: 5,
                              offset: Offset(0, 0)
                          ),
                        ],

                      ),
                      height: 65,
                      width: 65,

                    ) ,

                    SizedBox(width: 16,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.name.toString(), style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),
                            Text(widget.messageText.toString(),style: TextStyle(fontSize: 18,color: Colors.grey.shade600, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomTheme.primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54 ,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 0)
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:8,),
                  Text(widget.time.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}