import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

Widget buildBottomBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.095,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), 
      color: AppTheme.mainColor,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.home_outlined, color: AppTheme.elemntsBackground)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: AppTheme.elemntsBackground)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border_outlined, color: AppTheme.elemntsBackground)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_outline, color: AppTheme.elemntsBackground)),
        ],
      ),
    ),
  );
}
