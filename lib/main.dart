import 'package:flutter/material.dart';
import 'package:flutter_demo/create.dart';
import 'package:flutter_demo/dashboard.dart';
import 'package:flutter_demo/get_ticket.dart';
import 'package:flutter_demo/login.dart';
import 'package:flutter_demo/navbar.dart';
import 'package:flutter_demo/request_ticket.dart';
import 'package:flutter_demo/resgister.dart';
import 'package:flutter_demo/view_req.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'register',
    routes:{
      'register':(context)=>MyRegister(),
      'login':(context)=>MyLogin(),
      'navbar':(context)=>Navbar(),
      'dashboard':(context)=>DashBoardScreen(),
      'request':(context)=>RequestTicket(),
      'view':(context)=>ViewRequest(),
      'logout':(context)=>DashBoardScreen(),
    },
  ));
}