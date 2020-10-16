import 'package:flutter/material.dart';
import 'package:flutterapp1/pages/home.dart';
import 'package:flutterapp1/pages/chose_location.dart';
import 'package:flutterapp1/pages/loading.dart';

void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {'/':(context)=> Loading(), '/home':(context) => Home(),'/location':(context) => ChooseLocation(),

  },
));


