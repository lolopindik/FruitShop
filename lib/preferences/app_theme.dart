import 'package:flutter/material.dart';

class AppTheme {
  static const Color mainColor = Color.fromARGB(255, 255, 105, 97); //FF6961
  static ColorScheme mainColorScheme = ColorScheme.fromSeed(seedColor: mainColor);
  static const Color sceletonBackground = Color.fromARGB(255, 255, 245, 245);//FFF5F5
  static const Color labelText = Color.fromARGB(255,0,74,74);//304250
  static const Color elemntsBackground = Colors.white;//FFFFFF
}

class TextStyles {
  static const TextStyle firstLabel = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);
}