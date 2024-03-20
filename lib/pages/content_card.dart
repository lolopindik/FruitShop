import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/content_appbar.dart';

class ContentCard extends StatelessWidget {
  final String pathPhoto;
  final double price;
  final String description;
  final String name;

  const ContentCard(
      {super.key,
      required this.pathPhoto,
      required this.price,
      required this.description,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.sceletonBackground,
      appBar: buildAppBar(context),
    );
  }
}
