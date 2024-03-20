import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppTheme.sceletonBackground,
    leading: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined, size: 30,),
        ),
      )
    ],
  );
}
