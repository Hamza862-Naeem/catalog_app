// ignore_for_file: dead_code

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: prefer_const_constructors
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black)
        
          ),
      ),  
        body: ListView.builder(
        
          itemBuilder: (context, index){
            return ItemWidget(item: CatalogModel.ItemWidget[index]);
          },

        ),
        
        drawer: MyDrawer(),
      );
    
      
    
  }
}


