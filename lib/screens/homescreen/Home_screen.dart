// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:sampleproject/screens/homescreen/components/circle_avatars.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // bakcground Color : 0xFF000000
    // 2nd Color : 0xFF343436
    // 3rd : 0xFF303030
    // 4th : 0xFF3086df
    // xx : 0xFF949395
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        toolbarHeight: 50,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.jpg"),
          ),
        ),
        title: Center(child: Text("Chats")),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
            Icons.add_circle_outline,color: Color(0xFF3086df),
          )
          )

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF000000),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left:15,right: 15,top:8),
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF343436).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Color(0xFF909092).withOpacity(0.6)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color:Color(0xFF909092).withOpacity(0.6),
                    )
                    ),
                ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryAvatars(true,Image:AssetImage("assets/avatar.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar1.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar12.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar13.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar4.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar5.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar6.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar7.jpg")),
                      StoryAvatars(false,Image:AssetImage("assets/avatar8.jpg")),
      
                      
                    ],
                    
                  ),
                ),
                ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    ChatAvatars(true,name:"Mike Will",Image: AssetImage("assets/avatar1.jpg"),isActive: false,),
                    ChatAvatars(false,name:"John doe",Image: AssetImage("assets/avatar12.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Maria Black",Image: AssetImage("assets/avatar13.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Johnson Michael",Image: AssetImage("assets/avatar11.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Tom Blackson",Image: AssetImage("assets/avatar5.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Gumble Waterson",Image: AssetImage("assets/avatar6.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Ted Joe",Image: AssetImage("assets/avatar7.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Joe Muma",Image: AssetImage("assets/avatar8.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Joe Muma",Image: AssetImage("assets/avatar4.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Joe Muma",Image: AssetImage("assets/avatar2.jpg"),isActive: false,),
                    ChatAvatars(false,name:"Joe Muma",Image: AssetImage("assets/avatar3.jpg"),isActive: false,),
                    
                
                    
                  ],
                ),
      
          ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded,size: 40,),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.group,color: Colors.grey,size: 40,),label: "People")
        ],
        currentIndex: 0,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
      ),
    );
  }
}




