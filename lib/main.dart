// ignore_for_file: unused_import

import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
 void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
   routes:{
       "/":(context)=>loginPage(),
       // ignore: prefer_const_constructors
       MyRoutes.homeRoute: (context)=>HomePage(),
       MyRoutes.loginRoute:(context)=>loginPage()
       } ,   
     );
  

  }
}

