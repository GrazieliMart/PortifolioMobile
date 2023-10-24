import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  
}
 
class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 34, 32, 32),
    colorScheme: ColorScheme.dark(),
    
    iconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
     colorScheme: ColorScheme.light(),
       iconTheme: IconThemeData(color: Colors.lightBlue),
  );
}
