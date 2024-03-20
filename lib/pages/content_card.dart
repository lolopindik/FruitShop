import 'package:flutter/material.dart';
import 'package:fruit_shop/preferences/app_theme.dart';
import 'package:fruit_shop/widgets/content_appbar.dart';

class ContentCard extends StatelessWidget {
  final String pathPhoto;
  final double price;
  final String description;
  final String name;
  final String type;

  const ContentCard(
      {super.key,
      required this.pathPhoto,
      required this.price,
      required this.description,
      required this.name,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.sceletonBackground,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image.network(
                pathPhoto,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                  color: AppTheme.elemntsBackground,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 28, left: 28, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyles.itemLabel,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppTheme.sceletonBackground,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: AppTheme.elemntsHintSub,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Icon(
                                      Icons.remove,
                                      color: AppTheme.sceletonBackground,
                                    )),
                              ),
                              const Text(
                                '1',
                                style: TextStyles.itemLabel,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: AppTheme.mainColor,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Icon(
                                      Icons.add,
                                      color: AppTheme.sceletonBackground,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 28),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppTheme.sceletonBackground,
                              borderRadius: BorderRadius.circular(14)),
                          child: Text(
                            '\$${price.toStringAsFixed(2)}',
                            style: TextStyles.itemSub,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyles.contentLabelDescription,
                        ),
                        Text(type),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
