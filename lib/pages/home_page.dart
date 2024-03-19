import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/bottom_bar.dart';
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
      bottomNavigationBar: buildBottomBar(context),
      backgroundColor: AppTheme.sceletonBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
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
                        SizedBox(height: 30),
                        Text("Hi User!"),
                        Text("Let's get some item!",
                            style: TextStyles.accountLabel),
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
            padding: EdgeInsets.only(left: 30, top: 22),
            child: Text("Popular item", style: TextStyles.itemLabel,),
          ),
        ],
      ),
    );
  }
}
