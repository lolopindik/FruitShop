import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

Widget buildSearchBar(BuildContext context) {
  return Expanded(
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search item...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppTheme.elemntsBackground,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        prefixIcon: const Icon(Icons.search),
      ),
    ),
  );
}
