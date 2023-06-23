import'package:flutter/material.dart';
import 'package:my_app/register.dart';

import 'home.dart';
import 'login.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes:{
      'home':(context)=>HomePage(),
      },
  ));
}
