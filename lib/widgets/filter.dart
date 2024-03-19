import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

Widget buildfilter(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.095,
    width: MediaQuery.of(context).size.height * 0.095,
    decoration: BoxDecoration(
      color: AppTheme.mainColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: IconButton(
      onPressed: () {
        // Обработка нажатия на иконку меню
      },
      icon: const Icon(Icons.menu, color: AppTheme.sceletonBackground),
      iconSize: 24,
    ),
  );
}
