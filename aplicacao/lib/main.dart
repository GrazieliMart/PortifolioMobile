import 'package:aplicacao/NavBar.dart';
import 'package:aplicacao/bemvindo.dart';
import 'package:aplicacao/book.dart';
import 'package:aplicacao/cont.dart';
import 'package:aplicacao/home.dart';
import 'package:aplicacao/theme/theme_constants.dart';
import 'package:aplicacao/theme/theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager = ThemeManager();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portifólio',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,

      routes: {
        '/':(context) => Home(),
        '/bemvindo':(context) => BemVindo(),
         '/cont':(context) => Cont(),
          '/book':(context) => Book(),
        
      },
    );


  }}