// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
class StoryAvatars extends StatelessWidget {
  final AssetImage Image;
  final bool isFirst;
  const StoryAvatars(
    this.isFirst,{
    required this.Image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15,top:20),
      child: Stack(
        children :[
          CircleAvatar(
          radius: 30,
          backgroundColor: (isFirst)?Color(0xFF343436):null,
          backgroundImage: (isFirst)?null:Image,
          child: (isFirst)?Icon(Icons.video_call_rounded,size:40,color:Colors.white):null
        ),
         

        ] 
      ),
      
    );
  }
}


class ChatAvatars extends StatelessWidget {
  final String name;
  final AssetImage Image;
  final bool isActive;
  final bool isFirst;
  const ChatAvatars(
    this.isFirst,{
    required this.name,
    required this.Image,
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (isFirst)?EdgeInsets.only(top: 20):null,
      child: ListTile(
        leading: AvatarCircle(),
        title: Text(name,style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.w500
          ),
          
          ),
        subtitle: Text("How are you ?",style: TextStyle(
          color: Colors.grey[500],
          fontSize: 17,
          fontWeight: FontWeight.w400
          ),
          
          ),
      ),
    );
  }
  Widget AvatarCircle() {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: Image,
          radius: 35,
          ),
        Positioned(
          right: 0,
          bottom: 0,
          child: (isActive)?Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.green,
              border: Border.all(
                color:Color(0xFF000000),
                width: 3
              )
            ),
          ):Text("")
        )
      ],
    );


  }
}

















/*


        */