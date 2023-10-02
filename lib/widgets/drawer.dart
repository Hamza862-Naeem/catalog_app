// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl= "https://avatars.githubusercontent.com/u/5550850?v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
      
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
            accountName:Text("Mashazil"),
            accountEmail:Text("meeshi862@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
          
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.blue,
                ),),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ), 
              ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),  




   
            
        ],
      ),
      ),
      
    );
  }
}