import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/bottom_bar.dart';
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
            padding: const EdgeInsets.only(bottom: 30),
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
                buildSearchBar(context),
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
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search item...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppTheme.elemntsBackground,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 25),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
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
                    icon: const Icon(Icons.segment_outlined,
                        color: AppTheme.sceletonBackground),
                    iconSize: 24, 
                  ),
                ),
              ],
            ),
          ),
          //next code put here
        ],
      ),
    );
  }
}
