

// ignore_for_file: prefer_const_constructors, duplicate_ignore, override_on_non_overriding_member, annotate_overrides

import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  @override
  String name ="";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()){
 setState(() {
                          changeButton =true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute); 
                       setState(() {
                          changeButton =false;
                        });                
  }}
  
  Widget build(BuildContext context) {
    return Material(
     
      color: Colors.white,
      child: SingleChildScrollView(
        child:Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
            
              ),
               // ignore: prefer_const_constructors
               SizedBox(height: 20.0,),
              Text("Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
                SizedBox(height: 20.0,),
              
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 52.0),
                  child: Column(children: [
                    TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please type username first";
                      }
                     
                      return null;
                    },
                    onChanged: (value){
                      name =value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                     validator: (value){
                      if(value!.isEmpty){
                        return "Please type Password first";
                      }
                       else if (value.length<6){
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40.0,),
                  
                    InkWell(
                      onTap:  () => moveToHome(context),
                            
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                     width: changeButton ? 50 : 150,
                     height: 50,
                     
                     alignment: Alignment.center,
                     child:changeButton? Icon(Icons.done,
                      color: Colors.white,) 
                      :Text(
                       "Login",
                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ?50:8),
                    ),
                  
                  
                  
                    ),
                  ),
        
                      
        
        
        
        
        
        
        
        
                 //  ElevatedButton( 
                   // child:Text("login"),
                   // style: TextButton.styleFrom(minimumSize: Size(150,40)),
                   // onPressed: (){
                     // Navigator.pushNamed(context, MyRoutes.homeRoute);
                   // },
                   //),
                  ],),
                ),
                
            ],
              
          ),
        ),
      ),
      
    );
  }
}


