import 'package:cyboring/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:cyboring/Pages/cover.dart';
import 'package:cyboring/Pages/home.dart';
import 'package:cyboring/Pages/navigation/Planning.dart';
import 'package:cyboring/Pages/navigation/ToDo.dart';
import 'package:cyboring/Pages/navigation/Stuff.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Cover(),
    '/login': (context) => Login(),
    '/home': (context) => Home(),

    '/todo': (context) => ToDo(),
    '/planning': (context) => Planning(),
    '/stuff': (context) => Stuff(),
  },
));