import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';

// ignore: camel_case_types
class buildBottomBar extends StatefulWidget {
  const buildBottomBar({super.key});

  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<buildBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBarItem(int index, IconData icon) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? AppTheme.sceletonBackground : Colors.white54,
          ),
          if (_selectedIndex == index)
            Container(
              height: 4,
              width: 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.095,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppTheme.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildBarItem(0, Icons.home_outlined),
            _buildBarItem(1, Icons.favorite_border),
            _buildBarItem(2, Icons.bookmark_border_outlined),
            _buildBarItem(3, Icons.person_outline),
          ],
        ),
      ),
    );
  }
}
