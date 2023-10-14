import 'package:aplicacao/bemvindo.dart';
import 'package:aplicacao/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portifólio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/':(context) => Home(),
        '/bemvindo':(context) => BemVindo(),
        
      },
    );


  }}