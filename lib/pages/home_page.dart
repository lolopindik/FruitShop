import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomBar(context),
      backgroundColor: AppTheme.sceletonBackground,
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                color: AppTheme.mainColor,
                borderRadius: BorderRadius.circular(10)
                ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>
              [
                SizedBox(height: 30,),
                Text("text"),
                SizedBox(height: 10,),
                Text("text")
              ],
            ),
          )
        ],
      ),
    );
  }
}