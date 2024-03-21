import 'package:flutter/material.dart';

class AppTheme {
  static const Color mainColor = Color.fromARGB(255, 255, 105, 97); //FF6961
  static ColorScheme mainColorScheme = ColorScheme.fromSeed(seedColor: mainColor);
  static const Color sceletonBackground = Color.fromARGB(255, 255, 245, 245);//FFF5F5
  static const Color labelText = Color.fromARGB(255,0,74,74);//304250
  static const Color elemntsBackground = Colors.white;//FFFFFF
  static const Color elemntsHintSub = Colors.grey;
}

class TextStyles {
  static const TextStyle accountLabel = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle itemLabel = TextStyle(fontSize: 24, color: AppTheme.labelText, fontWeight: FontWeight.bold);
  static const TextStyle itemCard = TextStyle(fontSize: 16, color: AppTheme.labelText, fontWeight: FontWeight.bold);
  static const TextStyle itemSub = TextStyle(fontSize: 16, color: AppTheme.mainColor, fontWeight: FontWeight.w900);
  static const TextStyle itemhintSub = TextStyle(fontSize: 11, color: AppTheme.elemntsHintSub);
  static const TextStyle contentLabelDescription = TextStyle(fontSize: 22, color: AppTheme.mainColor, fontWeight: FontWeight.bold);
  static const TextStyle itemGgeySub = TextStyle(fontSize: 18, color: AppTheme.elemntsHintSub);
  static const TextStyle itemBasketSub = TextStyle(fontSize: 20, color: AppTheme.elemntsBackground);
}