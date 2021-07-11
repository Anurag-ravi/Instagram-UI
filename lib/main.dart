import 'package:flutter/material.dart';
import 'package:instagram/pages/activity.dart';
import 'package:instagram/pages/login.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/signup.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/mainpage.dart';
import 'package:instagram/pages/dm.dart';
import 'package:instagram/pages/profile.dart';

void main()=>  runApp(MaterialApp(
  title: 'Instagram',
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/login': (context) => Login(),
    '/signup': (context) => Signup(),
    '/mainpage': (context) => Mainpage(),
    '/searchpage': (context) => Searchpage(),
    '/dmpage': (context) => Dmpage(),
    '/profilepage': (context) => Profilepage(),
    '/activitypage': (context) => Activitypage(),
  },
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ),

));





