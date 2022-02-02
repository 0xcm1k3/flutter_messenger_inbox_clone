// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables, camel_case_types, avoid_print, non_constant_identifier_names



import 'package:flutter/material.dart';
import 'package:sampleproject/screens/homescreen/Home_screen.dart';

void main()=>runApp(
  MaterialApp(
    initialRoute: "/home",
    routes: {
      
      "/home": (context) => HomeScreen()
    },
  ));

