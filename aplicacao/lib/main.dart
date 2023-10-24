import 'package:aplicacao/NavBar.dart';
import 'package:aplicacao/bemvindo.dart';
import 'package:aplicacao/book.dart';
import 'package:aplicacao/cont.dart';
import 'package:aplicacao/home.dart';
import 'package:aplicacao/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,

      routes: {
        '/':(context) => Home(),
        '/bemvindo':(context) => BemVindo(),
         '/cont':(context) => Cont(),
          '/book':(context) => Book(),
        
      },
    );


  }}