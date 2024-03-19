import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

Widget buildSearchBar(BuildContext context) {
  return const Expanded(
    child: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 30),
          Text("Hi User!"),
          Text("Let's get some item!", style: TextStyles.firstLabel),
        ],
      ),
    ),
  );
}
