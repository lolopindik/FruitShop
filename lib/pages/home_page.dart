import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/bottom_bar.dart';
import 'package:fruit_shop/widgets/card_logic.dart';
import 'package:fruit_shop/widgets/filter.dart';
import 'package:fruit_shop/widgets/searh.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.sceletonBackground, toolbarHeight: 0,),
      bottomNavigationBar: const buildBottomBar(),
      backgroundColor: AppTheme.sceletonBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: AppTheme.mainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 20),
                          Text("Hi User!"),
                          Text("Let's get some item!",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, top: 30),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  buildSearchBar(context),
                  const SizedBox(width: 15),
                  buildfilter(context),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text("Popular item", style: TextStyles.itemLabel),
            ),
            const SizedBox(height: 10),
            buildDoubleCardLogic(context),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Text("Recent shop", style: TextStyles.itemLabel),
            ),
            singleCardPageView(context),
          ],
        ),
      ),
    );
  }
}
